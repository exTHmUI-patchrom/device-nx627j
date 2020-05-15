.class final Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v1, "serviceDied"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method
