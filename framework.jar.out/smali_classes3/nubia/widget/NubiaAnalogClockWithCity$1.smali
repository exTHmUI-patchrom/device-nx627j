.class Lnubia/widget/NubiaAnalogClockWithCity$1;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAnalogClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaAnalogClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaAnalogClockWithCity;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaAnalogClockWithCity;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .line 211
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    .line 216
    invoke-static {v0}, Lnubia/widget/NubiaAnalogClockWithCity;->access$000(Lnubia/widget/NubiaAnalogClockWithCity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-static {v1}, Lnubia/widget/NubiaAnalogClockWithCity;->access$100(Lnubia/widget/NubiaAnalogClockWithCity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 220
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-virtual {v1}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lnubia/widget/NubiaAnalogClockWithCity;->access$202(Lnubia/widget/NubiaAnalogClockWithCity;Z)Z

    .line 221
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-static {v0}, Lnubia/widget/NubiaAnalogClockWithCity;->access$300(Lnubia/widget/NubiaAnalogClockWithCity;)V

    .line 222
    return-void
.end method
