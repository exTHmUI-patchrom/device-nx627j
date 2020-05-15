.class Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$3;
.super Ljava/lang/Object;
.source "NubiaHighlightsProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 618
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$3;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$3;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->screenCapture()V

    .line 622
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$3;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->scheduleReadTextRunnable()V

    .line 623
    return-void
.end method
