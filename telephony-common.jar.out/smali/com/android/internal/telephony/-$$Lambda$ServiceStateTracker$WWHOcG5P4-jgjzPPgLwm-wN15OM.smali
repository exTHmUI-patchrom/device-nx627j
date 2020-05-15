.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/telephony/PhysicalChannelConfig;

    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->lambda$WWHOcG5P4-jgjzPPgLwm-wN15OM(Landroid/telephony/PhysicalChannelConfig;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
