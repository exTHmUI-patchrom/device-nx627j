.class Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$1;
.super Landroid/os/Handler;
.source "NubiaHighlightsProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 336
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$1;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$1;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$000(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V

    .line 343
    :goto_0
    return-void
.end method
