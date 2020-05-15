.class Landroid/view/textservice/SpellCheckerSession$1;
.super Landroid/os/Handler;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/textservice/SpellCheckerSession;


# direct methods
.method constructor <init>(Landroid/view/textservice/SpellCheckerSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/textservice/SpellCheckerSession;

    .line 106
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$1;->this$0:Landroid/view/textservice/SpellCheckerSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$1;->this$0:Landroid/view/textservice/SpellCheckerSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSession;->access$100(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$1;->this$0:Landroid/view/textservice/SpellCheckerSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/textservice/SuggestionsInfo;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSession;->access$000(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V

    .line 112
    nop

    .line 117
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
