.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field private final synthetic f$1:Landroid/hardware/radio/RadioManager$BandConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;->f$1:Landroid/hardware/radio/RadioManager$BandConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;->f$1:Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-static {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onConfigurationChanged$5(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method
