.class Lnubia/widget/NubiaAnalogClockWithCity$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lnubia/widget/NubiaAnalogClockWithCity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/widget/NubiaAnalogClockWithCity;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 226
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 230
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 231
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-virtual {v1}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lnubia/widget/NubiaAnalogClockWithCity;->access$202(Lnubia/widget/NubiaAnalogClockWithCity;Z)Z

    .line 232
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-static {v0}, Lnubia/widget/NubiaAnalogClockWithCity;->access$300(Lnubia/widget/NubiaAnalogClockWithCity;)V

    .line 233
    return-void
.end method
