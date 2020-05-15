.class public Landroid/os/IncidentManager;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IncidentManager$IncidentdDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IncidentManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/os/IIncidentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$002(Landroid/os/IncidentManager;Landroid/os/IIncidentManager;)Landroid/os/IIncidentManager;
    .locals 0
    .param p0, "x0"    # Landroid/os/IncidentManager;
    .param p1, "x1"    # Landroid/os/IIncidentManager;

    .line 34
    iput-object p1, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    return-object p1
.end method

.method private getIIncidentManagerLocked()Landroid/os/IIncidentManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    return-object v0

    .line 86
    :cond_0
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    monitor-exit p0

    return-object v0

    .line 90
    :cond_1
    const-string v0, "incident"

    .line 91
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    .line 92
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    invoke-interface {v0}, Landroid/os/IIncidentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/os/IncidentManager$IncidentdDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/os/IncidentManager$IncidentdDeathRecipient;-><init>(Landroid/os/IncidentManager;Landroid/os/IncidentManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 95
    :cond_2
    iget-object v0, p0, Landroid/os/IncidentManager;->mService:Landroid/os/IIncidentManager;

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportIncidentInternal(Landroid/os/IncidentReportArgs;)V
    .locals 3
    .param p1, "args"    # Landroid/os/IncidentReportArgs;

    .line 70
    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v0

    .line 71
    .local v0, "service":Landroid/os/IIncidentManager;
    if-nez v0, :cond_0

    .line 72
    const-string v1, "IncidentManager"

    const-string/jumbo v2, "reportIncident can\'t find incident binder service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-interface {v0, p1}, Landroid/os/IIncidentManager;->reportIncident(Landroid/os/IncidentReportArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "service":Landroid/os/IIncidentManager;
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "IncidentManager"

    const-string/jumbo v2, "reportIncident failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public reportIncident(Landroid/os/IncidentReportArgs;)V
    .locals 0
    .param p1, "args"    # Landroid/os/IncidentReportArgs;

    .line 56
    invoke-direct {p0, p1}, Landroid/os/IncidentManager;->reportIncidentInternal(Landroid/os/IncidentReportArgs;)V

    .line 57
    return-void
.end method
