.class public final synthetic Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;

    invoke-direct {v0}, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;-><init>()V

    sput-object v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;

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

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$CallStat;

    check-cast p2, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-static {p1, p2}, Lcom/android/internal/os/BinderCallsStats;->lambda$dump$1(Lcom/android/internal/os/BinderCallsStats$CallStat;Lcom/android/internal/os/BinderCallsStats$CallStat;)I

    move-result p1

    return p1
.end method
