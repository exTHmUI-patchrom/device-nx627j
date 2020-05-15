.class public final synthetic Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;

    invoke-direct {v0}, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;-><init>()V

    sput-object v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    check-cast p2, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-static {p1, p2}, Lcom/android/internal/os/BinderCallsStats;->lambda$dump$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;Lcom/android/internal/os/BinderCallsStats$UidEntry;)I

    move-result p1

    return p1
.end method
