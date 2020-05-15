.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/ims/ImsManager$Connector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 738
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionReady(Lcom/android/ims/ImsManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/ims/ImsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 743
    return-void
.end method

.method public connectionUnavailable()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 748
    return-void
.end method
