.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;

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

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->lambda$static$0(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p1

    return p1
.end method
