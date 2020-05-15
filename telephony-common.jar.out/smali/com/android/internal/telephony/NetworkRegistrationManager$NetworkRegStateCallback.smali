.class Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;
.super Landroid/telephony/INetworkServiceCallback$Stub;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRegStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Landroid/telephony/INetworkServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/NetworkRegistrationManager$1;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    return-void
.end method


# virtual methods
.method public onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "state"    # Landroid/telephony/NetworkRegistrationState;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetNetworkRegistrationStateComplete result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$200(Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$600(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 161
    .local v0, "onCompleteMessage":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 162
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 163
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 166
    :cond_0
    const-string v1, "onCompleteMessage is null"

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$700(Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void
.end method

.method public onNetworkStateChanged()V
    .locals 1

    .line 172
    const-string v0, "onNetworkStateChanged"

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$200(Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$800(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 174
    return-void
.end method
