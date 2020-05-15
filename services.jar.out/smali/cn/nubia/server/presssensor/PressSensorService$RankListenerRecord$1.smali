.class Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;-><init>(Lcn/nubia/server/presssensor/PressSensorService;Landroid/os/IBinder;Lnubia/os/presssensor/IRankListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

.field final synthetic val$this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    .line 426
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    iput-object p2, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;->val$this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    invoke-static {v1}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->access$1300(Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1400(Lcn/nubia/server/presssensor/PressSensorService;Landroid/os/IBinder;)V

    .line 429
    return-void
.end method
