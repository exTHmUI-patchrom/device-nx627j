.class Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable$1;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;

    .line 401
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable$1;->this$1:Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 4
    .param p1, "lhs"    # Landroid/app/usage/UsageStats;
    .param p2, "rhs"    # Landroid/app/usage/UsageStats;

    .line 404
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 405
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 407
    const/4 v0, -0x1

    return v0

    .line 409
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 401
    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable$1;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p1

    return p1
.end method
