.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;->f$0:Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;->f$0:Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$removeImsServiceFeature$0(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z

    move-result p1

    return p1
.end method
