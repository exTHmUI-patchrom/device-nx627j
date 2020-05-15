.class public abstract Landroid/os/ProxyFileDescriptorCallback;
.super Ljava/lang/Object;
.source "ProxyFileDescriptorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    const-string/jumbo v2, "onFsync"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public onGetSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 50
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EBADF:I

    const-string/jumbo v2, "onGetSize"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public onRead(JI[B)I
    .locals 3
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 65
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EBADF:I

    const-string/jumbo v2, "onRead"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public abstract onRelease()V
.end method

.method public onWrite(JI[B)I
    .locals 3
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 79
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EBADF:I

    const-string/jumbo v2, "onWrite"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
