.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;->f$0:I

    iput p2, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;->f$0:I

    iget v1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;->f$1:I

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$removeImsFeatureBinder$1(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;)Z

    move-result p1

    return p1
.end method
