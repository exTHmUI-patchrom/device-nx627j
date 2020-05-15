.class Lnubia/widget/NubiaDigitalBigClockWithCity$HourFormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "NubiaDigitalBigClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaDigitalBigClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HourFormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaDigitalBigClockWithCity;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaDigitalBigClockWithCity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lnubia/widget/NubiaDigitalBigClockWithCity$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaDigitalBigClockWithCity;

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 85
    iget-object v0, p0, Lnubia/widget/NubiaDigitalBigClockWithCity$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaDigitalBigClockWithCity;

    iget-object v1, p0, Lnubia/widget/NubiaDigitalBigClockWithCity$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaDigitalBigClockWithCity;

    invoke-virtual {v1}, Lnubia/widget/NubiaDigitalBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lnubia/widget/NubiaDigitalBigClockWithCity;->access$302(Lnubia/widget/NubiaDigitalBigClockWithCity;Z)Z

    .line 86
    iget-object v0, p0, Lnubia/widget/NubiaDigitalBigClockWithCity$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaDigitalBigClockWithCity;

    invoke-static {v0}, Lnubia/widget/NubiaDigitalBigClockWithCity;->access$100(Lnubia/widget/NubiaDigitalBigClockWithCity;)V

    .line 87
    return-void
.end method
