.class Landroid/telephony/TelephonyManager$SubListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubListener"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 182
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->access$000()V

    .line 187
    return-void
.end method
