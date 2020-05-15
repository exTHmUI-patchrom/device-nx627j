.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;

    invoke-direct {v0}, Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;-><init>()V

    sput-object v0, Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$gfCssnBJI7TKfXb_Jmv7raVYNkY(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
