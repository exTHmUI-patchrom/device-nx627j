.class Landroid/telephony/ims/compat/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/compat/ImsService;


# direct methods
.method constructor <init>(Landroid/telephony/ims/compat/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/compat/ImsService;

    .line 89
    iput-object p1, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createEmergencyMMTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 94
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->access$000(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createMMTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 99
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->access$100(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 104
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->access$200(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->access$300(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 111
    return-void
.end method
