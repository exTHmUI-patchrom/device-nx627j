.class public Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;
.super Lcom/android/ims/ImsEcbmStateListener;
.source "EcbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/EcbmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsEcbmStateHandler"
.end annotation


# instance fields
.field phoneId:I

.field final synthetic this$0:Lcom/android/internal/telephony/EcbmHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/EcbmHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/EcbmHandler;
    .param p2, "id"    # I

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    invoke-direct {p0}, Lcom/android/ims/ImsEcbmStateListener;-><init>()V

    .line 168
    iput p2, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->phoneId:I

    .line 169
    return-void
.end method


# virtual methods
.method public onECBMEntered()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onECBMEntered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$000(Lcom/android/internal/telephony/EcbmHandler;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$102(Lcom/android/internal/telephony/EcbmHandler;Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->phoneId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$202(Lcom/android/internal/telephony/EcbmHandler;I)I

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->phoneId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$300(Lcom/android/internal/telephony/EcbmHandler;I)V

    .line 176
    return-void
.end method

.method public onECBMExited()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onECBMExited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$000(Lcom/android/internal/telephony/EcbmHandler;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->handleExitEmergencyCallbackMode(I)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$102(Lcom/android/internal/telephony/EcbmHandler;Z)Z

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->access$202(Lcom/android/internal/telephony/EcbmHandler;I)I

    .line 184
    return-void
.end method
