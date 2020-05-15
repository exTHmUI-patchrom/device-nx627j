.class Lnubia/widget/NubiaWeatherTextView$1$1;
.super Ljava/lang/Object;
.source "NubiaWeatherTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaWeatherTextView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnubia/widget/NubiaWeatherTextView$1;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaWeatherTextView$1;)V
    .locals 0
    .param p1, "this$1"    # Lnubia/widget/NubiaWeatherTextView$1;

    .line 99
    iput-object p1, p0, Lnubia/widget/NubiaWeatherTextView$1$1;->this$1:Lnubia/widget/NubiaWeatherTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView$1$1;->this$1:Lnubia/widget/NubiaWeatherTextView$1;

    iget-object v0, v0, Lnubia/widget/NubiaWeatherTextView$1;->this$0:Lnubia/widget/NubiaWeatherTextView;

    invoke-static {v0}, Lnubia/widget/NubiaWeatherTextView;->access$100(Lnubia/widget/NubiaWeatherTextView;)V

    .line 103
    return-void
.end method
