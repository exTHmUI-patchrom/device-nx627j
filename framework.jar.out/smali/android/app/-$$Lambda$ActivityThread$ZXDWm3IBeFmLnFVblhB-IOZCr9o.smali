.class public final synthetic Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field private final synthetic f$0:Landroid/app/ActivityThread;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;->f$0:Landroid/app/ActivityThread;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;->f$0:Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->lambda$attach$0(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V

    return-void
.end method
