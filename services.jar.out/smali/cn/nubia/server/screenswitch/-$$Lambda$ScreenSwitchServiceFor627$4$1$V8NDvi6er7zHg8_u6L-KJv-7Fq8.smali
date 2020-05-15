.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$4$1$V8NDvi6er7zHg8_u6L-KJv-7Fq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/Presentation;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$4$1$V8NDvi6er7zHg8_u6L-KJv-7Fq8;->f$0:Landroid/app/Presentation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$4$1$V8NDvi6er7zHg8_u6L-KJv-7Fq8;->f$0:Landroid/app/Presentation;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;->lambda$onPreDraw$0(Landroid/app/Presentation;)V

    return-void
.end method
