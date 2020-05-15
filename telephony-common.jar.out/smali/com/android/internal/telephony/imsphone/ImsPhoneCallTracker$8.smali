.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
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

    .line 3115
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFeatureResponse(IIII)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    .line 3117
    return-void
.end method

.method public onGetVideoQuality(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "quality"    # I

    .line 3125
    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    .line 3121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsSetFeatureValue(IIII)V

    .line 3122
    return-void
.end method

.method public onSetVideoQuality(I)V
    .locals 0
    .param p1, "status"    # I

    .line 3128
    return-void
.end method
