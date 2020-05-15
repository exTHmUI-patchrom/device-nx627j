.class Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSubscriptionsChangedListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 528
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 529
    return-void
.end method

.method constructor <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 531
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 532
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 533
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 540
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 541
    return-void
.end method
