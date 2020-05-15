.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .line 915
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, "valueChanged":Z
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 934
    :pswitch_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 935
    const/4 v0, 0x1

    .line 937
    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;IIZ)V

    goto :goto_2

    .line 921
    :pswitch_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 922
    const/4 v0, 0x1

    .line 924
    :cond_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 925
    .local v2, "isTransition":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    if-nez v2, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-static {v4, p2, v1, v5, v1}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 926
    if-eqz v2, :cond_4

    .line 927
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v4, v1, v1, v3}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 929
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v1, p2}, Landroid/widget/TimePickerClockDelegate;->access$500(Landroid/widget/TimePickerClockDelegate;I)I

    move-result v1

    .line 930
    .local v1, "localizedHour":I
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 931
    .end local v1    # "localizedHour":I
    nop

    .line 941
    .end local v2    # "isTransition":Z
    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 942
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v4}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 944
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
