.class public final synthetic Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;

    invoke-direct {v0}, Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;-><init>()V

    sput-object v0, Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;->INSTANCE:Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;

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

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroid/app/ResourcesManager;->lambda$static$0(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
