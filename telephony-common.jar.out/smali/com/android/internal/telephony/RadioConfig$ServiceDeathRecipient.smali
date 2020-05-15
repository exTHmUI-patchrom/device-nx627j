.class final Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RadioConfig.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RadioConfig;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RadioConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 72
    const-string v0, "serviceDied"

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->access$000(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RadioConfig;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RadioConfig;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RadioConfig;->sendMessage(Landroid/os/Message;)Z

    .line 74
    return-void
.end method
