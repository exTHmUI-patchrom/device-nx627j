.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsFeatureStatusCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

.field private mFeatureType:I

.field private mSlotId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V
    .locals 0
    .param p2, "slotId"    # I
    .param p3, "featureType"    # I

    .line 284
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 285
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mSlotId:I

    .line 286
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mFeatureType:I

    .line 287
    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    .line 270
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mSlotId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    .line 270
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mFeatureType:I

    return v0
.end method


# virtual methods
.method public getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    return-object v0
.end method
