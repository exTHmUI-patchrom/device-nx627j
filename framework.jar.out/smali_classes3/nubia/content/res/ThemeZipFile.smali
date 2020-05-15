.class public final Lnubia/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_THEME_VALUE_FILE:Ljava/lang/String; = "theme_values%s.xml"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final DEBUG_THEME:Z = false

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field static final TAG_THEME:Ljava/lang/String; = "ThemeFramework"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lnubia/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModifyTime:J

.field private mMetaData:Lnubia/content/res/ThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "ThemeFramework"

    sput-object v0, Lnubia/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 53
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lnubia/content/res/ThemeZipFile;->sDensity:I

    .line 67
    sget v0, Lnubia/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lnubia/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resource"    # Landroid/content/res/Resources;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 73
    iput-object p4, p0, Lnubia/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 74
    iput-object p3, p0, Lnubia/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    .line 77
    return-void
.end method

.method private clean()V
    .locals 1

    .line 83
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 84
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 85
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 93
    :cond_0
    return-void
.end method

.method private getInputStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1}, Lnubia/content/res/ThemeZipFile;->getThemeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lnubia/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 116
    .local v0, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_2

    .line 117
    const-string v1, "dpi/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "pos":I
    if-lez v1, :cond_2

    .line 120
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "realName":Ljava/lang/String;
    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 122
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 124
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "fileType":Ljava/lang/String;
    move-object v5, v0

    move v0, v3

    .local v0, "j":I
    .local v5, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_1
    sget-object v6, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 127
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 128
    .local v6, "array":[Ljava/lang/Object;
    aput-object v4, v6, v3

    .line 129
    sget-object v7, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v7, v7, v0

    invoke-static {v7}, Lnubia/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 130
    const/4 v7, 0x2

    aput-object v2, v6, v7

    .line 132
    const-string v7, "%s%s%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnubia/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 133
    if-nez v5, :cond_1

    .line 134
    nop

    .line 126
    .end local v6    # "array":[Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .restart local v6    # "array":[Ljava/lang/Object;
    :cond_1
    sget-object v3, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v3, v3, v0

    if-le v3, v8, :cond_3

    .line 138
    sget-object v3, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v3, v3, v0

    iput v3, v5, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    goto :goto_2

    .line 144
    .end local v1    # "pos":I
    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "fileType":Ljava/lang/String;
    .end local v5    # "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .end local v6    # "array":[Ljava/lang/Object;
    .local v0, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_2
    move-object v5, v0

    .end local v0    # "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v5    # "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_3
    :goto_2
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 148
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "icons"

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    const-string v0, "framework-nubia-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lockscreen"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    return-object p0

    .line 153
    :cond_2
    :goto_0
    const-string v0, "nubia"

    return-object v0

    .line 150
    :cond_3
    :goto_1
    const-string v0, "android"

    return-object v0
.end method

.method private getThemeFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "dpi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "pos":I
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "point":I
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 100
    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 104
    :cond_0
    return-object p1
.end method

.method protected static getThemeZipFile(Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lnubia/content/res/ThemeZipFile;
    .locals 5
    .param p0, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnubia/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "fullPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 167
    .local v1, "result":Lnubia/content/res/ThemeZipFile;
    sget-object v2, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v2

    .line 168
    :try_start_0
    sget-object v3, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    sget-object v3, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnubia/content/res/ThemeZipFile;

    move-object v1, v3

    .line 170
    :cond_0
    if-nez v1, :cond_1

    .line 172
    new-instance v3, Lnubia/content/res/ThemeZipFile;

    .line 173
    invoke-static {p1}, Lnubia/content/res/ThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, p0, v4, p2}, Lnubia/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V

    move-object v1, v3

    .line 174
    sget-object v3, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    monitor-exit v2

    .line 179
    return-object v1

    .line 177
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    const-string v2, "#*.png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "#*.png"

    .line 210
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 207
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "fileNameWithoutSuffix":Ljava/lang/String;
    iget-object v3, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 212
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 214
    .local v3, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    move-object v1, v4

    .line 216
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    nop

    .line 222
    .end local v2    # "fileNameWithoutSuffix":Ljava/lang/String;
    .end local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_1
    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v1, v2

    .line 226
    :goto_0
    if-eqz v1, :cond_3

    .line 227
    iget-object v2, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 228
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 229
    new-instance v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v3, p0, v2, v4, v5}, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;-><init>(Lnubia/content/res/ThemeZipFile;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 235
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_3
    goto :goto_1

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lnubia/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getZipInputStream error ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :goto_1
    nop

    .line 243
    return-object v0
.end method

.method private isValid()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadThemeValues()V
    .locals 10

    .line 260
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 261
    sget-object v2, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v2, v2, v1

    invoke-static {v2}, Lnubia/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "densityString":Ljava/lang/String;
    const-string v3, "theme_values%s.xml"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "themeFileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lnubia/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 265
    .local v4, "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v4, :cond_2

    .line 266
    const/4 v5, 0x0

    move-object v6, v5

    .line 268
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 269
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 270
    .local v7, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/BufferedInputStream;

    iget-object v9, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v8

    .line 271
    invoke-interface {v7, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v7}, Lnubia/content/res/ThemeZipFile;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_1

    .line 273
    :catch_0
    move-exception v5

    .line 274
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 277
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    if-eqz v6, :cond_0

    .line 278
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 281
    :catch_1
    move-exception v5

    goto :goto_3

    .line 279
    :cond_0
    iget-object v5, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    if-eqz v5, :cond_1

    .line 280
    iget-object v5, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :cond_1
    :goto_2
    goto :goto_4

    .line 281
    :goto_3
    nop

    .line 282
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    .end local v2    # "densityString":Ljava/lang/String;
    .end local v3    # "themeFileName":Ljava/lang/String;
    .end local v4    # "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 295
    const/4 v0, 0x0

    move v1, v0

    .line 297
    .local v1, "tag":I
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 299
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 394
    .end local v1    # "tag":I
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 300
    .restart local v1    # "tag":I
    :cond_0
    if-ne v1, v2, :cond_10

    .line 308
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v1, v4

    .line 309
    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    .line 312
    :cond_2
    if-ne v1, v3, :cond_3

    .line 314
    return-void

    .line 317
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "defType":Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 319
    const/4 v5, 0x0

    .line 320
    .local v5, "resName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 323
    .local v6, "defPackage":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    sub-int/2addr v7, v3

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_6

    .line 324
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "attrName":Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 326
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 328
    :cond_4
    const-string v9, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 323
    .end local v8    # "attrName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 333
    .end local v7    # "i":I
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 336
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 337
    goto :goto_1

    .line 340
    :cond_7
    if-nez v6, :cond_8

    .line 341
    iget-object v8, p0, Lnubia/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    move-object v6, v8

    .line 344
    :cond_8
    iget-object v8, p0, Lnubia/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 347
    .local v8, "resId":I
    if-lez v8, :cond_e

    .line 349
    const-string v9, "bool"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 350
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v9, v9, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    if-nez v9, :cond_9

    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 351
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_a

    .line 352
    :cond_9
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 353
    const-string v10, "true"

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 352
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    :cond_a
    const-string v9, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "integer"

    .line 358
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "drawable"

    .line 359
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 360
    :cond_b
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v9, v9, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 361
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_c

    .line 362
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 365
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 364
    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v10

    .line 363
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 362
    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    :cond_c
    const-string v9, "string"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 370
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v9, v9, Lnubia/content/res/ThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 371
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_d

    .line 372
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    :cond_d
    const-string v9, "dimen"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 377
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v9, v9, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_e

    .line 379
    nop

    .line 380
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/app/NubiaThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 381
    .local v9, "dimenValue":Ljava/lang/Integer;
    if-eqz v9, :cond_e

    .line 382
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    .end local v5    # "resName":Ljava/lang/String;
    .end local v6    # "defPackage":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "resId":I
    .end local v9    # "dimenValue":Ljava/lang/Integer;
    :cond_e
    nop

    .line 392
    .end local v4    # "defType":Ljava/lang/String;
    goto/16 :goto_1

    .line 389
    .restart local v4    # "defType":Ljava/lang/String;
    :cond_f
    return-void

    .line 301
    .end local v4    # "defType":Ljava/lang/String;
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1    # "tag":I
    :goto_3
    nop

    .line 395
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    return-void
.end method

.method private openZipFile()V
    .locals 5

    .line 404
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 407
    iget-wide v1, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 409
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    const/4 v2, 0x0

    iput-object v2, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 415
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 4

    .line 423
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 424
    .local v0, "lastModifyTime":J
    iget-wide v2, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    iget-wide v2, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 427
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->clean()V

    .line 428
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->openZipFile()V

    .line 429
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->loadThemeValues()V

    .line 430
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 432
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 434
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    .line 438
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public exists()Z
    .locals 2

    .line 442
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->clean()V

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "info":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v1, v1, Lnubia/content/res/ThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lnubia/content/res/ThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 450
    :cond_0
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 454
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "paramInt"    # I

    .line 458
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
