.class public Landroid/os/ShellCallback;
.super Ljava/lang/Object;
.source "ShellCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ShellCallback$MyShellCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ShellCallback;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCallback"


# instance fields
.field final mLocal:Z

.field mShellCallback:Lcom/android/internal/os/IShellCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Landroid/os/ShellCallback$1;

    invoke-direct {v0}, Landroid/os/ShellCallback$1;-><init>()V

    sput-object v0, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ShellCallback;->mLocal:Z

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ShellCallback;->mLocal:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IShellCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IShellCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    .line 108
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    invoke-interface {v0}, Lcom/android/internal/os/IShellCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 111
    :cond_0
    return-void
.end method

.method public static writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "callback"    # Landroid/os/ShellCallback;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "seLinuxContext"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "seLinuxContext"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;

    .line 66
    iget-boolean v0, p0, Landroid/os/ShellCallback;->mLocal:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/ShellCallback;->onOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/os/IShellCallback;->openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ShellCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/ShellCallback$MyShellCallback;

    invoke-direct {v0, p0}, Landroid/os/ShellCallback$MyShellCallback;-><init>(Landroid/os/ShellCallback;)V

    iput-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    invoke-interface {v0}, Lcom/android/internal/os/IShellCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
