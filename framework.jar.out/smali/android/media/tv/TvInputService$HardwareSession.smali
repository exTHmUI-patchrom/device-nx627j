.class public abstract Landroid/media/tv/TvInputService$HardwareSession;
.super Landroid/media/tv/TvInputService$Session;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareSession"
.end annotation


# instance fields
.field private mHardwareSession:Landroid/media/tv/TvInputManager$Session;

.field private final mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

.field private mProxySession:Landroid/media/tv/ITvInputSession;

.field private mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1837
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;-><init>(Landroid/content/Context;)V

    .line 1855
    new-instance v0, Landroid/media/tv/TvInputService$HardwareSession$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$HardwareSession$1;-><init>(Landroid/media/tv/TvInputService$HardwareSession;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    .line 1838
    return-void
.end method

.method static synthetic access$1500(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .line 1829
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/TvInputManager$Session;

    .line 1829
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .line 1829
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSession;

    .line 1829
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .line 1829
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSessionCallback;

    .line 1829
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .line 1829
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 1829
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .line 1829
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object v0
.end method


# virtual methods
.method public abstract getHardwareInputId()Ljava/lang/String;
.end method

.method public onHardwareVideoAvailable()V
    .locals 0

    .line 1909
    return-void
.end method

.method public onHardwareVideoUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 1924
    return-void
.end method

.method public final onSetSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1901
    const-string v0, "TvInputService"

    const-string/jumbo v1, "onSetSurface() should not be called in HardwareProxySession."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v0, 0x0

    return v0
.end method

.method release()V
    .locals 1

    .line 1928
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 1930
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    .line 1932
    :cond_0
    invoke-super {p0}, Landroid/media/tv/TvInputService$Session;->release()V

    .line 1933
    return-void
.end method
