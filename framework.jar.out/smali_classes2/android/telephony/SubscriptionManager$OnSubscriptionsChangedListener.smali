.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;
    }
.end annotation


# instance fields
.field callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 547
    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 548
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    .line 549
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 557
    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;

    invoke-direct {v0, p0, p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    .line 558
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 525
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 581
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .line 566
    return-void
.end method
