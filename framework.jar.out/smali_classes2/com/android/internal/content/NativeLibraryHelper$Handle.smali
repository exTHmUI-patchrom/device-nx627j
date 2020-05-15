.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final apkHandles:[J

.field final debuggable:Z

.field final extractNativeLibs:Z

.field private volatile mClosed:Z

.field private final mGuard:Ldalvik/system/CloseGuard;

.field final multiArch:Z


# direct methods
.method constructor <init>([JZZZ)V
    .locals 2
    .param p1, "apkHandles"    # [J
    .param p2, "multiArch"    # Z
    .param p3, "extractNativeLibs"    # Z
    .param p4, "debuggable"    # Z

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 135
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 136
    iput-boolean p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 137
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 138
    iput-boolean p4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 139
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static create(Landroid/content/pm/PackageParser$Package;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-static {v0, v1, v4, v2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 4
    .param p0, "lite"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    iget-boolean v3, p0, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 4
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 85
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 9
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .param p3, "debuggable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    .local v0, "size":I
    new-array v1, v0, [J

    .line 107
    .local v1, "apkHandles":[J
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 108
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper;->access$000(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 110
    aget-wide v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 112
    nop

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 113
    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open APK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([JZZZ)V

    return-object v2
.end method

.method public static createFd(Landroid/content/pm/PackageParser$PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 6
    .param p0, "lite"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 124
    .local v0, "apkHandles":[J
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 125
    .local v1, "path":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/internal/content/NativeLibraryHelper;->access$200(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 126
    aget-wide v2, v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    iget-boolean v3, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iget-boolean v4, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    iget-boolean v5, p0, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([JZZZ)V

    return-object v2

    .line 127
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open APK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from fd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 145
    .local v3, "apkHandle":J
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    .line 144
    .end local v3    # "apkHandle":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 149
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 157
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
