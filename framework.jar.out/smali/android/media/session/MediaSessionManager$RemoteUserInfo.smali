.class public final Landroid/media/session/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# instance fields
.field private final mCallerBinder:Landroid/os/IBinder;

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;IILandroid/os/IBinder;)V

    .line 837
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerBinder"    # Landroid/os/IBinder;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    .line 844
    iput p2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    .line 845
    iput p3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    .line 846
    iput-object p4, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    .line 847
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 884
    instance-of v0, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 885
    return v1

    .line 887
    :cond_0
    if-ne p0, p1, :cond_1

    .line 888
    const/4 v0, 0x1

    return v0

    .line 890
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 891
    .local v0, "otherUserInfo":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    iget-object v2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    if-nez v2, :cond_2

    goto :goto_0

    .line 892
    :cond_2
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    .line 891
    :cond_3
    :goto_0
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 853
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 860
    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 867
    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 897
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
