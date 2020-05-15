.class Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
.super Ljava/lang/Object;
.source "PressSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/presssensor/PressSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankListenerRecord"
.end annotation


# instance fields
.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mKeyBinder:Landroid/os/IBinder;

.field private mListener:Lnubia/os/presssensor/IRankListener;

.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method public constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;Landroid/os/IBinder;Lnubia/os/presssensor/IRankListener;)V
    .locals 1
    .param p2, "key"    # Landroid/os/IBinder;
    .param p3, "listener"    # Lnubia/os/presssensor/IRankListener;

    .line 423
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p2, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mKeyBinder:Landroid/os/IBinder;

    .line 425
    iput-object p3, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mListener:Lnubia/os/presssensor/IRankListener;

    .line 426
    new-instance v0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;-><init>(Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;Lcn/nubia/server/presssensor/PressSensorService;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 431
    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    .line 418
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mKeyBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public attach()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mKeyBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 435
    return-void
.end method

.method public detach()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mKeyBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 439
    return-void
.end method

.method public getKey()Landroid/os/IBinder;
    .locals 1

    .line 442
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mKeyBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getListener()Lnubia/os/presssensor/IRankListener;
    .locals 1

    .line 446
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->mListener:Lnubia/os/presssensor/IRankListener;

    return-object v0
.end method
