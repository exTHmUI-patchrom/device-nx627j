.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilter"
.end annotation


# instance fields
.field private final mDestPort:I

.field private final mPdus:[[B

.field private volatile mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

.field private final mSmsFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;)V
    .locals 0
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "smsFormat"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPdus:[[B

    .line 188
    iput p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mDestPort:I

    .line 189
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method filterSms(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .locals 2
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "smsFilterCallback"    # Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 197
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$000(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v1, "bindService() for carrier messaging service failed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$100(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onFilterComplete(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v1, "bindService() for carrier messaging service succeeded"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void
.end method

.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 6
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    .line 213
    :try_start_0
    new-instance v1, Landroid/service/carrier/MessagePdu;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPdus:[[B

    .line 214
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mDestPort:I

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    .line 215
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$300(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 213
    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception filtering the SMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$100(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onFilterComplete(I)V

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
