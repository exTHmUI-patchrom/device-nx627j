.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$shouldFeaturesCauseBind$6(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p1

    return p1
.end method
