.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/SwitchImplFor627;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/SwitchImplFor627;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;->f$0:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    iput-object p2, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;->f$1:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;->f$0:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;->f$1:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;->f$2:I

    invoke-static {v0, v1, v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->lambda$switchToBack$1(Lcn/nubia/server/screenswitch/SwitchImplFor627;Ljava/lang/String;I)V

    return-void
.end method
