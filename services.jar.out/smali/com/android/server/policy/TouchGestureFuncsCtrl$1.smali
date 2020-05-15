.class Lcom/android/server/policy/TouchGestureFuncsCtrl$1;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Lnubia/gesture/touch/GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/TouchGestureFuncsCtrl;->enableTouchGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 119
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lnubia/gesture/touch/GestureArg;)Z
    .locals 3
    .param p1, "arg"    # Lnubia/gesture/touch/GestureArg;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "bHandled":Z
    instance-of v1, p1, Lnubia/gesture/touch/MultiPointArg;

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p1}, Lnubia/gesture/touch/GestureArg;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$200(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->doSwitchApp(Z)V

    .line 139
    const/4 v0, 0x1

    .line 140
    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$200(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->doSwitchApp(Z)V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$000(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$100(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    .line 132
    :cond_0
    const/4 v0, 0x1

    .line 133
    nop

    .line 151
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
