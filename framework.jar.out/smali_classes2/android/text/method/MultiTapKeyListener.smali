.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoText:Z

.field private mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 50
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, ".,1!@#$%^&*:/?\'=()"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "abc2ABC"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "def3DEF"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "ghi4GHI"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "jkl5JKL"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "mno6MNO"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "pqrs7PQRS"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "tuv8TUV"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "wxyz9WXYZ"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "0+"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, " "

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .line 64
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 66
    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    .line 67
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 75
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 77
    .local v0, "off":I
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 78
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 81
    :cond_0
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static removeTimeouts(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "buf"    # Landroid/text/Spannable;

    .line 246
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 248
    .local v0, "timeout":[Landroid/text/method/MultiTapKeyListener$Timeout;
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 249
    aget-object v2, v0, v1

    .line 251
    .local v2, "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    invoke-virtual {v2, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->access$002(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;

    .line 253
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 248
    .end local v2    # "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_0

    .line 255
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .line 85
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "pref":I
    if-eqz p1, :cond_0

    .line 94
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v1

    .line 98
    .end local v1    # "pref":I
    .local v9, "pref":I
    :cond_0
    move v9, v1

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 99
    .local v1, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 101
    .local v2, "b":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 102
    .local v10, "selStart":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 105
    .end local v1    # "a":I
    .end local v2    # "b":I
    .local v11, "selEnd":I
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 106
    .local v12, "activeStart":I
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 113
    .local v13, "activeEnd":I
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    ushr-int/lit8 v14, v1, 0x18

    .line 116
    .local v14, "rec":I
    const/16 v1, 0x11

    const/4 v6, 0x1

    if-ne v12, v10, :cond_4

    if-ne v13, v11, :cond_4

    sub-int v2, v11, v10

    if-ne v2, v6, :cond_4

    if-ltz v14, :cond_4

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 118
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_4

    .line 119
    if-ne v8, v1, :cond_2

    .line 120
    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 122
    .local v2, "current":C
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    nop

    .line 124
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {v7, v10, v11, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 126
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 128
    return v6

    .line 130
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    nop

    .line 132
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {v7, v10, v11, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 133
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 134
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 136
    return v6

    .line 140
    .end local v2    # "current":C
    :cond_2
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ne v2, v14, :cond_3

    .line 141
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 142
    .local v5, "val":Ljava/lang/String;
    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 143
    .local v4, "ch":C
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 145
    .local v2, "ix":I
    if-ltz v2, :cond_3

    .line 146
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    rem-int v15, v1, v3

    .line 148
    .end local v2    # "ix":I
    .local v15, "ix":I
    add-int/lit8 v16, v15, 0x1

    move-object v1, v7

    move v2, v10

    move v3, v11

    move/from16 v17, v4

    move-object v4, v5

    .end local v4    # "ch":C
    .local v17, "ch":C
    move-object/from16 v18, v5

    move v5, v15

    .end local v5    # "val":Ljava/lang/String;
    .local v18, "val":Ljava/lang/String;
    move/from16 v19, v6

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 149
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 150
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 152
    return v19

    .line 161
    .end local v15    # "ix":I
    .end local v17    # "ch":C
    .end local v18    # "val":Ljava/lang/String;
    :cond_3
    move/from16 v19, v6

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 163
    .end local v14    # "rec":I
    .local v2, "rec":I
    if-ltz v2, :cond_5

    .line 164
    invoke-static {v7, v11, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 165
    move v3, v11

    .line 171
    .end local v10    # "selStart":I
    .local v3, "selStart":I
    move v10, v2

    move v14, v3

    goto :goto_0

    .line 168
    .end local v2    # "rec":I
    .end local v3    # "selStart":I
    .restart local v10    # "selStart":I
    .restart local v14    # "rec":I
    :cond_4
    move/from16 v19, v6

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 171
    .local v10, "rec":I
    .local v14, "selStart":I
    :cond_5
    move v14, v10

    move v10, v2

    :goto_0
    if-ltz v10, :cond_c

    .line 176
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 178
    .local v6, "val":Ljava/lang/String;
    const/4 v2, 0x0

    .line 179
    .local v2, "off":I
    and-int/lit8 v3, v9, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 180
    invoke-static {v3, v7, v14}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    move v3, v5

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 182
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 183
    move v2, v3

    .line 184
    goto :goto_2

    .line 181
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v2    # "off":I
    .end local v3    # "i":I
    .local v15, "off":I
    :cond_7
    :goto_2
    move v15, v2

    if-eq v14, v11, :cond_8

    .line 190
    invoke-static {v7, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 193
    :cond_8
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v7, v2, v14, v14, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 196
    add-int/lit8 v16, v15, 0x1

    move-object v1, v7

    move v2, v14

    move v3, v11

    move-object v4, v6

    move/from16 v20, v9

    move v9, v5

    move v5, v15

    .end local v9    # "pref":I
    .local v20, "pref":I
    move-object/from16 v17, v6

    move/from16 v6, v16

    .end local v6    # "val":Ljava/lang/String;
    .local v17, "val":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 198
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 199
    .local v1, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 201
    .end local v11    # "selEnd":I
    .local v2, "selEnd":I
    if-eq v2, v1, :cond_9

    .line 202
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 204
    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v4, 0x21

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 208
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    shl-int/lit8 v5, v10, 0x18

    or-int/2addr v4, v5

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 215
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 216
    new-instance v3, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v3, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 221
    invoke-interface {v7, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_b

    .line 222
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Landroid/text/method/KeyListener;

    invoke-interface {v7, v9, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/KeyListener;

    .line 224
    .local v3, "methods":[Landroid/text/method/KeyListener;
    array-length v4, v3

    move v5, v9

    :goto_3
    if-ge v5, v4, :cond_a

    aget-object v6, v3, v5

    .line 225
    .local v6, "method":Ljava/lang/Object;
    invoke-interface {v7, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 224
    .end local v6    # "method":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 227
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v7, v0, v9, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 231
    .end local v3    # "methods":[Landroid/text/method/KeyListener;
    :cond_b
    return v19

    .line 234
    .end local v1    # "oldStart":I
    .end local v2    # "selEnd":I
    .end local v15    # "off":I
    .end local v17    # "val":Ljava/lang/String;
    .end local v20    # "pref":I
    .restart local v9    # "pref":I
    .restart local v11    # "selEnd":I
    :cond_c
    move/from16 v20, v9

    .end local v9    # "pref":I
    .restart local v20    # "pref":I
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 290
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "start"    # I
    .param p6, "stop"    # I

    .line 239
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 240
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 241
    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 291
    return-void
.end method
