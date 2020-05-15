.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;->f$0:I

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$5(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p1

    return p1
.end method
