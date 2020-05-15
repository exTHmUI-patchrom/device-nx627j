.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final HIDE_FLOATING_TOOLBAR_DELAY_MS:I = 0xc8

.field private static final UP:I = 0x2

.field private static sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 25
    .param p1, "what"    # I
    .param p2, "widget"    # Landroid/widget/TextView;
    .param p3, "buffer"    # Landroid/text/Spannable;

    move-object/from16 v0, p2

    .line 101
    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 103
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 105
    .local v3, "padding":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    .line 106
    .local v4, "areaTop":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v5, v3

    .line 108
    .local v5, "areaBot":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 109
    .local v6, "lineTop":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 111
    .local v7, "lineBot":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    .line 112
    .local v8, "first":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    .line 114
    .local v9, "last":I
    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 116
    .local v10, "candidates":[Landroid/text/style/ClickableSpan;
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .line 117
    .local v11, "a":I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 119
    .local v12, "b":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 120
    .local v13, "selStart":I
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 122
    .local v14, "selEnd":I
    if-gez v13, :cond_0

    .line 123
    sget-object v15, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    if-ltz v15, :cond_0

    .line 124
    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v15

    move v14, v15

    move v13, v15

    .line 128
    :cond_0
    const v15, 0x7fffffff

    if-le v13, v9, :cond_1

    .line 129
    move v14, v15

    move v13, v15

    .line 130
    :cond_1
    if-ge v14, v8, :cond_2

    .line 131
    const/16 v16, -0x1

    move/from16 v14, v16

    move/from16 v13, v16

    .line 133
    :cond_2
    const/16 v16, 0x0

    packed-switch p1, :pswitch_data_0

    .line 200
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v24, v5

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v4    # "areaTop":I
    .end local v5    # "areaBot":I
    .local v19, "layout":Landroid/text/Layout;
    .local v21, "padding":I
    .local v22, "areaTop":I
    .local v24, "areaBot":I
    goto/16 :goto_4

    .line 178
    .end local v19    # "layout":Landroid/text/Layout;
    .end local v21    # "padding":I
    .end local v22    # "areaTop":I
    .end local v24    # "areaBot":I
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "padding":I
    .restart local v4    # "areaTop":I
    .restart local v5    # "areaBot":I
    :pswitch_0
    const v17, 0x7fffffff

    .line 179
    .local v17, "bestStart":I
    const v18, 0x7fffffff

    .line 181
    .local v18, "bestEnd":I
    move-object/from16 v19, v2

    move/from16 v2, v17

    move/from16 v15, v18

    move/from16 v17, v16

    .end local v18    # "bestEnd":I
    .local v2, "bestStart":I
    .local v15, "bestEnd":I
    .local v17, "i":I
    .restart local v19    # "layout":Landroid/text/Layout;
    :goto_0
    move/from16 v20, v17

    .end local v17    # "i":I
    .local v20, "i":I
    move/from16 v21, v3

    array-length v3, v10

    .end local v3    # "padding":I
    .restart local v21    # "padding":I
    move/from16 v22, v4

    move/from16 v4, v20

    if-ge v4, v3, :cond_5

    .line 182
    .end local v20    # "i":I
    .local v4, "i":I
    .restart local v22    # "areaTop":I
    aget-object v3, v10, v4

    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 184
    .local v3, "start":I
    if-gt v3, v13, :cond_3

    if-ne v13, v14, :cond_4

    .line 185
    :cond_3
    if-ge v3, v2, :cond_4

    .line 186
    move v2, v3

    .line 187
    move/from16 v23, v2

    aget-object v2, v10, v4

    .end local v2    # "bestStart":I
    .local v23, "bestStart":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 181
    .end local v3    # "start":I
    .end local v15    # "bestEnd":I
    .local v2, "bestEnd":I
    move v15, v2

    move/from16 v2, v23

    .end local v23    # "bestStart":I
    .local v2, "bestStart":I
    .restart local v15    # "bestEnd":I
    :cond_4
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "i":I
    .restart local v17    # "i":I
    move/from16 v3, v21

    move/from16 v4, v22

    goto :goto_0

    .line 192
    .end local v17    # "i":I
    :cond_5
    const v3, 0x7fffffff

    if-ge v15, v3, :cond_6

    .line 193
    invoke-static {v1, v2, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 194
    const/4 v3, 0x1

    return v3

    .line 200
    .end local v2    # "bestStart":I
    .end local v15    # "bestEnd":I
    :cond_6
    move/from16 v24, v5

    goto/16 :goto_4

    .line 156
    .end local v19    # "layout":Landroid/text/Layout;
    .end local v21    # "padding":I
    .end local v22    # "areaTop":I
    .local v2, "layout":Landroid/text/Layout;
    .local v3, "padding":I
    .local v4, "areaTop":I
    :pswitch_1
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v4    # "areaTop":I
    .restart local v19    # "layout":Landroid/text/Layout;
    .restart local v21    # "padding":I
    .restart local v22    # "areaTop":I
    const/4 v2, -0x1

    .line 157
    .local v2, "bestStart":I
    const/4 v3, -0x1

    .line 159
    .local v3, "bestEnd":I
    move v4, v3

    move v3, v2

    move/from16 v2, v16

    .local v2, "i":I
    .local v3, "bestStart":I
    .local v4, "bestEnd":I
    :goto_1
    array-length v15, v10

    if-ge v2, v15, :cond_a

    .line 160
    aget-object v15, v10, v2

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 162
    .local v15, "end":I
    if-lt v15, v14, :cond_8

    if-ne v13, v14, :cond_7

    goto :goto_2

    .line 159
    .end local v15    # "end":I
    :cond_7
    move/from16 v24, v5

    goto :goto_3

    .line 163
    .restart local v15    # "end":I
    :cond_8
    :goto_2
    if-le v15, v4, :cond_9

    .line 164
    move/from16 v24, v5

    aget-object v5, v10, v2

    .end local v5    # "areaBot":I
    .restart local v24    # "areaBot":I
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 165
    move v4, v15

    .end local v15    # "end":I
    goto :goto_3

    .line 159
    .end local v24    # "areaBot":I
    .restart local v5    # "areaBot":I
    :cond_9
    move/from16 v24, v5

    .end local v5    # "areaBot":I
    .restart local v24    # "areaBot":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v24

    goto :goto_1

    .line 170
    .end local v2    # "i":I
    .end local v24    # "areaBot":I
    .restart local v5    # "areaBot":I
    :cond_a
    move/from16 v24, v5

    .end local v5    # "areaBot":I
    .restart local v24    # "areaBot":I
    if-ltz v3, :cond_e

    .line 171
    invoke-static {v1, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 172
    const/4 v2, 0x1

    return v2

    .line 135
    .end local v19    # "layout":Landroid/text/Layout;
    .end local v21    # "padding":I
    .end local v22    # "areaTop":I
    .end local v24    # "areaBot":I
    .local v2, "layout":Landroid/text/Layout;
    .local v3, "padding":I
    .local v4, "areaTop":I
    .restart local v5    # "areaBot":I
    :pswitch_2
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v24, v5

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v4    # "areaTop":I
    .end local v5    # "areaBot":I
    .restart local v19    # "layout":Landroid/text/Layout;
    .restart local v21    # "padding":I
    .restart local v22    # "areaTop":I
    .restart local v24    # "areaBot":I
    if-ne v13, v14, :cond_b

    .line 136
    return v16

    .line 139
    :cond_b
    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v13, v14, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 141
    .local v2, "links":[Landroid/text/style/ClickableSpan;
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    .line 142
    return v16

    .line 145
    :cond_c
    aget-object v3, v2, v16

    .line 146
    .local v3, "link":Landroid/text/style/ClickableSpan;
    instance-of v5, v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v5, :cond_d

    .line 147
    move-object v5, v3

    check-cast v5, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v5, v0, v4}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_4

    .line 149
    :cond_d
    invoke-virtual {v3, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 151
    nop

    .line 200
    .end local v2    # "links":[Landroid/text/style/ClickableSpan;
    .end local v3    # "link":Landroid/text/style/ClickableSpan;
    :cond_e
    :goto_4
    return v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 271
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    .line 274
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 50
    const/16 v0, 0x17

    if-eq p3, v0, :cond_0

    const/16 v0, 0x42

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    return v0

    .line 61
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 255
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 256
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 261
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 263
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 266
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 268
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 206
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 208
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_6

    .line 209
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 210
    .local v2, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 212
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 213
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 215
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 216
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 218
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 219
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 220
    .local v5, "line":I
    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 222
    .local v6, "off":I
    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 224
    .local v7, "links":[Landroid/text/style/ClickableSpan;
    array-length v8, v7

    if-eqz v8, :cond_5

    .line 225
    const/4 v8, 0x0

    aget-object v9, v7, v8

    .line 226
    .local v9, "link":Landroid/text/style/ClickableSpan;
    if-ne v0, v1, :cond_2

    .line 227
    instance-of v10, v9, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v10, :cond_1

    .line 228
    move-object v10, v9

    check-cast v10, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v10, p1, v8}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v9, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 233
    :cond_2
    if-nez v0, :cond_4

    .line 234
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x1c

    if-lt v8, v10, :cond_3

    .line 238
    const/16 v8, 0xc8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    .line 240
    :cond_3
    nop

    .line 241
    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 242
    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 240
    invoke-static {p2, v8, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 244
    :cond_4
    :goto_0
    return v1

    .line 246
    .end local v9    # "link":Landroid/text/style/ClickableSpan;
    :cond_5
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 250
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "line":I
    .end local v6    # "off":I
    .end local v7    # "links":[Landroid/text/style/ClickableSpan;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
