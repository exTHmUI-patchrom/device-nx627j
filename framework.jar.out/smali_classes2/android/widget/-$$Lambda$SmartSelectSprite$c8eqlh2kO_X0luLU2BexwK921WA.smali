.class public final synthetic Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;

    invoke-direct {v0}, Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;-><init>()V

    sput-object v0, Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;->INSTANCE:Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/widget/SmartSelectSprite;->lambda$static$0(Landroid/graphics/RectF;)D

    move-result-wide v0

    return-wide v0
.end method
