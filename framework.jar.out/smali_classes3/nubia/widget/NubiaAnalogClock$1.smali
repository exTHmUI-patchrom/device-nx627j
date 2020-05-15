.class Lnubia/widget/NubiaAnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaAnalogClock;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaAnalogClock;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/widget/NubiaAnalogClock;

    .line 290
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock$1;->this$0:Lnubia/widget/NubiaAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock$1;->this$0:Lnubia/widget/NubiaAnalogClock;

    invoke-static {v0}, Lnubia/widget/NubiaAnalogClock;->access$000(Lnubia/widget/NubiaAnalogClock;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock$1;->this$0:Lnubia/widget/NubiaAnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lnubia/widget/NubiaAnalogClock;->access$102(Lnubia/widget/NubiaAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 299
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock$1;->this$0:Lnubia/widget/NubiaAnalogClock;

    invoke-static {v0}, Lnubia/widget/NubiaAnalogClock;->access$200(Lnubia/widget/NubiaAnalogClock;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock$1;->this$0:Lnubia/widget/NubiaAnalogClock;

    invoke-static {v0}, Lnubia/widget/NubiaAnalogClock;->access$300(Lnubia/widget/NubiaAnalogClock;)V

    .line 304
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock$1;->this$0:Lnubia/widget/NubiaAnalogClock;

    invoke-virtual {v0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    .line 305
    return-void
.end method
