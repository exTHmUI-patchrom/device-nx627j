.class Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "NubiaWeatherTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaWeatherTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HourFormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaWeatherTextView;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaWeatherTextView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaWeatherTextView;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 86
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 87
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaWeatherTextView;

    iget-object v1, p0, Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaWeatherTextView;

    invoke-virtual {v1}, Lnubia/widget/NubiaWeatherTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lnubia/widget/NubiaWeatherTextView;->access$002(Lnubia/widget/NubiaWeatherTextView;Z)Z

    .line 88
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;->this$0:Lnubia/widget/NubiaWeatherTextView;

    invoke-static {v0}, Lnubia/widget/NubiaWeatherTextView;->access$100(Lnubia/widget/NubiaWeatherTextView;)V

    .line 89
    return-void
.end method
