.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static final DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final FLAG_USE_MAGNIFIER:Z = false

.field public static final HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0xb

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final MENU_ITEM_ORDER_REDO:I = 0x3

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final MENU_ITEM_ORDER_UNDO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TAP_STATE_DOUBLE_TAP:I = 0x2

.field private static final TAP_STATE_FIRST_TAP:I = 0x1

.field private static final TAP_STATE_INITIAL:I = 0x0

.field private static final TAP_STATE_TRIPLE_CLICK:I = 0x3

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1


# instance fields
.field mAllowUndo:Z

.field private mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field private mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field private final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mDrawableForCursor:Landroid/graphics/drawable/Drawable;

.field mError:Ljava/lang/CharSequence;

.field private mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field private final mHapticTextHandleEnabled:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mLastButtonState:I

.field public mLastDownPositionX:F

.field public mLastDownPositionY:F

.field private mLastTouchUpTime:J

.field private mLastUpPositionX:F

.field private mLastUpPositionY:F

.field private final mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

.field private final mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRenderCursorRegardlessTiming:Z

.field private mRequestingLinkActionMode:Z

.field private mRestartActionModeOnNextRefresh:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field private mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTapState:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field private mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private final mUpdateMagnifierRunnable:Ljava/lang/Runnable;

.field private mUpdateWordIteratorText:Z

.field private mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 198
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 199
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 202
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 215
    new-instance v1, Landroid/widget/Editor$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    .line 225
    new-instance v1, Landroid/widget/Editor$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 271
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    .line 280
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 297
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 334
    iput v1, p0, Landroid/widget/Editor;->mTapState:I

    .line 335
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 367
    new-instance v2, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v2, p0, v0}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 370
    new-instance v2, Landroid/widget/Editor$3;

    invoke-direct {v2, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 379
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 381
    new-instance v1, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v1, p0, v0}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 2923
    new-instance v1, Landroid/widget/Editor$5;

    invoke-direct {v1, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 384
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 386
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 387
    new-instance v1, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v1, p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 388
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    .line 397
    iput-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 399
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/widget/Editor$SuggestionInfo;

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/Editor;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/Editor;)Landroid/widget/Editor$InsertionPointCursorController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$3800(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4600(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4700(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return v0
.end method

.method static synthetic access$4902(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$5002(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/Editor;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # F

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-boolean v0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    return-void
.end method

.method static synthetic access$6200(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method static synthetic access$6300(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6502(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6600(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget v0, p0, Landroid/widget/Editor;->mTapState:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/text/Layout;
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method static synthetic access$7000(Landroid/widget/Editor;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/Editor;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Landroid/widget/Editor;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static synthetic access$7700(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/widget/Editor;II)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$7902(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)Landroid/widget/Editor$CorrectionHighlighter;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/widget/Editor$CorrectionHighlighter;

    .line 144
    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$8000(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .line 144
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method static synthetic access$8600(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 7
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .line 856
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 857
    .local v0, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 859
    .local v1, "ht":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 861
    .local v2, "defaultWidthInPixels":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v4, p3, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    .line 863
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 864
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 866
    .local v3, "l":Landroid/text/StaticLayout;
    const/4 v4, 0x0

    .line 867
    .local v4, "max":F
    nop

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 868
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 867
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 875
    .end local v5    # "i":I
    :cond_0
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 876
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 877
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    .line 2484
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 2485
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2487
    :cond_0
    const/4 v0, 0x0

    .line 2488
    .local v0, "drawableWidth":I
    if-eqz p1, :cond_1

    .line 2489
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2490
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 2492
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2495
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 2496
    .local v1, "scrollX":I
    int-to-float v2, v1

    sub-float v2, p2, v2

    .line 2497
    .local v2, "horizontalDiff":F
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2498
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2501
    .local v3, "viewClippedWidth":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    .line 2503
    add-int v4, v3, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    .local v4, "left":I
    :goto_1
    goto :goto_3

    .line 2504
    .end local v4    # "left":I
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2505
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x100000

    sub-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v6, v3

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_3

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_3

    goto :goto_2

    .line 2511
    :cond_3
    float-to-int v4, p2

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    goto :goto_3

    .line 2509
    :cond_4
    :goto_2
    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    goto :goto_1

    .line 2511
    .restart local v4    # "left":I
    :goto_3
    nop

    .line 2513
    return v4
.end method

.method private discardTextDisplayLists()V
    .locals 3

    .line 545
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_2

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 547
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 549
    .local v1, "displayList":Landroid/view/RenderNode;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-virtual {v1}, Landroid/view/RenderNode;->discardDisplayList()V

    .line 546
    .end local v1    # "displayList":Landroid/view/RenderNode;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 6

    .line 1356
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1357
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 1358
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 1359
    .local v1, "spannable":Landroid/text/Spannable;
    nop

    .line 1360
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 1359
    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1361
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1362
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    .line 1363
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    .line 1365
    and-int/lit8 v4, v4, -0x2

    .line 1366
    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1361
    .end local v4    # "flags":I
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    goto :goto_0

    .line 1370
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .line 1990
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1991
    .local v0, "translate":Z
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    int-to-float v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1992
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1993
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1995
    :cond_2
    if-eqz v0, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1996
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1818
    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v14

    .line 1819
    .local v14, "lineRange":J
    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 1820
    .local v10, "firstLine":I
    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    .line 1821
    .local v9, "lastLine":I
    if-gez v9, :cond_0

    return-void

    .line 1823
    :cond_0
    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v10

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1826
    instance-of v0, v13, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_d

    .line 1827
    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v0, :cond_1

    .line 1828
    const-class v0, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/Editor$TextRenderNode;

    iput-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1831
    :cond_1
    move-object v8, v13

    check-cast v8, Landroid/text/DynamicLayout;

    .line 1832
    .local v8, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v7

    .line 1833
    .local v7, "blockEndLines":[I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    .line 1834
    .local v16, "blockIndices":[I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v6

    .line 1835
    .local v6, "numberOfBlocks":I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v5

    .line 1837
    .local v5, "indexFirstChangedBlock":I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v4

    .line 1838
    .local v4, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    const/4 v1, 0x1

    if-eqz v4, :cond_3

    .line 1839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1840
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v2

    .line 1841
    .local v2, "blockIndex":I
    if-eq v2, v3, :cond_2

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 1843
    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    iput-boolean v1, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 1839
    .end local v2    # "blockIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x1

    goto :goto_0

    .line 1848
    .end local v0    # "i":I
    :cond_3
    const/4 v2, 0x0

    invoke-static {v7, v2, v6, v10}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 1849
    .local v0, "startBlock":I
    if-gez v0, :cond_4

    .line 1850
    add-int/lit8 v3, v0, 0x1

    neg-int v0, v3

    .line 1852
    :cond_4
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1854
    .end local v0    # "startBlock":I
    .local v17, "startBlock":I
    const/4 v0, 0x0

    .line 1855
    .local v0, "startIndexToFindAvailableRenderNode":I
    move/from16 v19, v6

    .line 1857
    .local v19, "lastIndex":I
    move/from16 v20, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v20, "startIndexToFindAvailableRenderNode":I
    :goto_1
    move v3, v0

    .end local v0    # "i":I
    .local v3, "i":I
    if-ge v3, v6, :cond_9

    .line 1858
    aget v0, v16, v3

    .line 1859
    .local v0, "blockIndex":I
    if-lt v3, v5, :cond_6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v1, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 1862
    iget-object v1, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    goto :goto_2

    .line 1864
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    aget v1, v7, v3

    if-ge v1, v10, :cond_7

    .line 1867
    nop

    .line 1857
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v13, v8

    move v12, v9

    move/from16 v28, v10

    move-wide/from16 v24, v14

    const/16 v23, 0x0

    move-object v15, v4

    move v14, v5

    goto :goto_3

    .line 1869
    :cond_7
    move/from16 v18, v0

    move-object v0, v11

    .end local v0    # "blockIndex":I
    .local v18, "blockIndex":I
    move/from16 v21, v2

    const/16 v22, -0x1

    move-object v1, v12

    const/16 v23, 0x0

    move-object v2, v13

    move-wide/from16 v24, v14

    move/from16 v14, v22

    move/from16 v22, v3

    move-object/from16 v3, p3

    .end local v3    # "i":I
    .end local v14    # "lineRange":J
    .local v22, "i":I
    .local v24, "lineRange":J
    move-object v15, v4

    move-object/from16 v4, p4

    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v15, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move v14, v5

    move/from16 v5, p5

    .end local v5    # "indexFirstChangedBlock":I
    .local v14, "indexFirstChangedBlock":I
    move/from16 v26, v6

    move-object v6, v7

    .end local v6    # "numberOfBlocks":I
    .local v26, "numberOfBlocks":I
    move-object/from16 v27, v7

    move-object/from16 v7, v16

    .end local v7    # "blockEndLines":[I
    .local v27, "blockEndLines":[I
    move-object v13, v8

    move/from16 v8, v22

    .end local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v13, "dynamicLayout":Landroid/text/DynamicLayout;
    move v12, v9

    move/from16 v9, v26

    .end local v9    # "lastLine":I
    .local v12, "lastLine":I
    move/from16 v28, v10

    move/from16 v10, v20

    .end local v10    # "firstLine":I
    .local v28, "firstLine":I
    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    .line 1872
    aget v0, v27, v22

    if-lt v0, v12, :cond_8

    .line 1873
    add-int/lit8 v3, v22, 0x1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1874
    nop

    .line 1877
    move/from16 v10, v19

    goto :goto_4

    .line 1857
    .end local v18    # "blockIndex":I
    :cond_8
    :goto_3
    add-int/lit8 v0, v22, 0x1

    .end local v22    # "i":I
    .local v0, "i":I
    move v9, v12

    move-object v8, v13

    move v5, v14

    move-object v4, v15

    move/from16 v1, v21

    move/from16 v2, v23

    move-wide/from16 v14, v24

    move/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v10, v28

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto/16 :goto_1

    .line 1877
    .end local v0    # "i":I
    .end local v12    # "lastLine":I
    .end local v13    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v24    # "lineRange":J
    .end local v26    # "numberOfBlocks":I
    .end local v27    # "blockEndLines":[I
    .end local v28    # "firstLine":I
    .restart local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "indexFirstChangedBlock":I
    .restart local v6    # "numberOfBlocks":I
    .restart local v7    # "blockEndLines":[I
    .restart local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v9    # "lastLine":I
    .restart local v10    # "firstLine":I
    .local v14, "lineRange":J
    :cond_9
    move/from16 v23, v2

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v13, v8

    move v12, v9

    move/from16 v28, v10

    move-wide/from16 v24, v14

    move-object v15, v4

    move v14, v5

    move/from16 v10, v19

    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "indexFirstChangedBlock":I
    .end local v6    # "numberOfBlocks":I
    .end local v7    # "blockEndLines":[I
    .end local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v9    # "lastLine":I
    .end local v19    # "lastIndex":I
    .local v10, "lastIndex":I
    .restart local v12    # "lastLine":I
    .restart local v13    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v14, "indexFirstChangedBlock":I
    .restart local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v24    # "lineRange":J
    .restart local v26    # "numberOfBlocks":I
    .restart local v27    # "blockEndLines":[I
    .restart local v28    # "firstLine":I
    :goto_4
    if-eqz v15, :cond_c

    .line 1878
    nop

    .local v23, "i":I
    :goto_5
    move/from16 v9, v23

    .end local v23    # "i":I
    .local v9, "i":I
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    .line 1879
    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1880
    .local v8, "block":I
    invoke-virtual {v13, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v7

    .line 1881
    .local v7, "blockIndex":I
    const/4 v6, -0x1

    if-eq v7, v6, :cond_b

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    if-eqz v0, :cond_b

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v0, :cond_a

    goto :goto_6

    .line 1878
    .end local v7    # "blockIndex":I
    .end local v8    # "block":I
    :cond_a
    move/from16 v18, v6

    move/from16 v22, v9

    move-object v11, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    move-object/from16 v13, p2

    move v15, v10

    move v14, v12

    move-object/from16 v12, p1

    goto :goto_7

    .line 1884
    .restart local v7    # "blockIndex":I
    .restart local v8    # "block":I
    :cond_b
    :goto_6
    move-object v0, v11

    move v5, v12

    move-object/from16 v12, p1

    move-object v1, v12

    .end local v12    # "lastLine":I
    .local v5, "lastLine":I
    move-object v4, v13

    move-object/from16 v13, p2

    move-object v2, v13

    .end local v13    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v4, "dynamicLayout":Landroid/text/DynamicLayout;
    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    .end local v4    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v11, "dynamicLayout":Landroid/text/DynamicLayout;
    move/from16 v29, v14

    move v14, v5

    move/from16 v5, p5

    .end local v5    # "lastLine":I
    .local v14, "lastLine":I
    .local v29, "indexFirstChangedBlock":I
    move/from16 v18, v6

    move-object/from16 v6, v27

    move/from16 v19, v7

    move-object/from16 v7, v16

    .end local v7    # "blockIndex":I
    .local v19, "blockIndex":I
    move/from16 v21, v8

    .end local v8    # "block":I
    .local v21, "block":I
    move/from16 v22, v9

    move/from16 v9, v26

    .end local v9    # "i":I
    .restart local v22    # "i":I
    move-object/from16 v30, v15

    move v15, v10

    move/from16 v10, v20

    .end local v10    # "lastIndex":I
    .local v15, "lastIndex":I
    .local v30, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    .line 1878
    .end local v19    # "blockIndex":I
    .end local v21    # "block":I
    :goto_7
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "i":I
    .restart local v23    # "i":I
    move-object v13, v11

    move v12, v14

    move v10, v15

    move/from16 v14, v29

    move-object/from16 v15, v30

    move-object/from16 v11, p0

    goto :goto_5

    .line 1892
    .end local v11    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v23    # "i":I
    .end local v29    # "indexFirstChangedBlock":I
    .end local v30    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v10    # "lastIndex":I
    .restart local v12    # "lastLine":I
    .restart local v13    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v14, "indexFirstChangedBlock":I
    .local v15, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_c
    move-object v11, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    move-object/from16 v13, p2

    move v15, v10

    move v14, v12

    move-object/from16 v12, p1

    .end local v10    # "lastIndex":I
    .end local v12    # "lastLine":I
    .end local v13    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v11    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v14, "lastLine":I
    .local v15, "lastIndex":I
    .restart local v29    # "indexFirstChangedBlock":I
    .restart local v30    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v15}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 1893
    .end local v11    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v15    # "lastIndex":I
    .end local v16    # "blockIndices":[I
    .end local v17    # "startBlock":I
    .end local v20    # "startIndexToFindAvailableRenderNode":I
    .end local v26    # "numberOfBlocks":I
    .end local v27    # "blockEndLines":[I
    .end local v29    # "indexFirstChangedBlock":I
    .end local v30    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    nop

    .line 1897
    move/from16 v0, v28

    goto :goto_8

    .line 1895
    .end local v24    # "lineRange":J
    .end local v28    # "firstLine":I
    .local v9, "lastLine":I
    .local v10, "firstLine":I
    .local v14, "lineRange":J
    :cond_d
    move/from16 v28, v10

    move-wide/from16 v24, v14

    move v14, v9

    .end local v9    # "lastLine":I
    .end local v10    # "firstLine":I
    .local v14, "lastLine":I
    .restart local v24    # "lineRange":J
    .restart local v28    # "firstLine":I
    move/from16 v0, v28

    invoke-virtual {v13, v12, v0, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 1897
    .end local v28    # "firstLine":I
    .local v0, "firstLine":I
    :goto_8
    return-void
.end method

.method private drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I
    .param p6, "blockEndLines"    # [I
    .param p7, "blockIndices"    # [I
    .param p8, "blockInfoIndex"    # I
    .param p9, "numberOfBlocks"    # I
    .param p10, "startIndexToFindAvailableRenderNode"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p7

    .line 1903
    aget v6, p6, p8

    .line 1904
    .local v6, "blockEndLine":I
    aget v0, v4, p8

    .line 1906
    .local v0, "blockIndex":I
    const/4 v8, 0x1

    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 1907
    .local v9, "blockIsInvalid":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 1908
    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct {v1, v4, v10, v11}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v0

    .line 1911
    aput v0, v4, p8

    .line 1912
    iget-object v12, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v12, v12, v0

    if-eqz v12, :cond_1

    .line 1913
    iget-object v12, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v12, v12, v0

    iput-boolean v8, v12, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1915
    :cond_1
    add-int/lit8 v11, v0, 0x1

    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .local v11, "startIndexToFindAvailableRenderNode":I
    goto :goto_1

    .line 1918
    .end local v11    # "startIndexToFindAvailableRenderNode":I
    .restart local p10    # "startIndexToFindAvailableRenderNode":I
    :cond_2
    move/from16 v10, p9

    move/from16 v11, p10

    .end local v0    # "blockIndex":I
    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .local v11, "blockIndex":I
    .local v12, "startIndexToFindAvailableRenderNode":I
    :goto_1
    move v12, v11

    move v11, v0

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    if-nez v0, :cond_3

    .line 1919
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    new-instance v13, Landroid/widget/Editor$TextRenderNode;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v13, v0, v11

    .line 1922
    :cond_3
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v13

    .line 1923
    .local v13, "blockDisplayListIsInvalid":Z
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    iget-object v14, v0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 1924
    .local v14, "blockDisplayList":Landroid/view/RenderNode;
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v0, :cond_5

    if-eqz v13, :cond_4

    goto :goto_2

    .line 1965
    :cond_4
    move/from16 v19, v9

    goto/16 :goto_7

    .line 1925
    :cond_5
    :goto_2
    if-nez p8, :cond_6

    .line 1926
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, p8, -0x1

    aget v0, p6, v0

    add-int/2addr v0, v8

    :goto_3
    move v8, v0

    .line 1927
    .local v8, "blockBeginLine":I
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v15

    .line 1928
    .local v15, "top":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1929
    .local v7, "bottom":I
    const/4 v0, 0x0

    .line 1930
    .local v0, "left":I
    move/from16 v16, v0

    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .end local v0    # "left":I
    .local v16, "left":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 1931
    .local v0, "right":I
    move/from16 v17, v0

    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .end local v0    # "right":I
    .local v17, "right":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1932
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1933
    .local v0, "min":F
    const/16 v18, 0x1

    .line 1934
    .local v18, "max":F
    move v3, v0

    move v0, v8

    move/from16 v4, v18

    .end local v18    # "max":F
    .local v0, "line":I
    .local v3, "min":F
    .local v4, "max":F
    :goto_4
    if-gt v0, v6, :cond_7

    .line 1935
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1936
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1934
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1938
    .end local v0    # "line":I
    :cond_7
    float-to-int v0, v3

    .line 1939
    .end local v16    # "left":I
    .local v0, "left":I
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v3, v5

    .line 1943
    .end local v4    # "max":F
    .end local v17    # "right":I
    .local v3, "right":I
    move v4, v0

    goto :goto_5

    .end local v0    # "left":I
    .end local v3    # "right":I
    .restart local v16    # "left":I
    .restart local v17    # "right":I
    :cond_8
    move/from16 v4, v16

    move/from16 v3, v17

    .end local v16    # "left":I
    .end local v17    # "right":I
    .restart local v3    # "right":I
    .local v4, "left":I
    :goto_5
    if-eqz v13, :cond_9

    .line 1944
    sub-int v0, v3, v4

    sub-int v5, v7, v15

    invoke-virtual {v14, v0, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    move-object v5, v0

    .line 1949
    .local v5, "displayListCanvas":Landroid/view/DisplayListCanvas;
    neg-int v0, v4

    int-to-float v0, v0

    move/from16 v19, v9

    neg-int v9, v15

    .end local v9    # "blockIsInvalid":Z
    .local v19, "blockIsInvalid":Z
    int-to-float v9, v9

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 1950
    invoke-virtual {v2, v5, v8, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 1951
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1955
    invoke-virtual {v14, v5}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1957
    invoke-virtual {v14, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1958
    nop

    .line 1962
    const/4 v9, 0x0

    goto :goto_6

    .line 1955
    :catchall_0
    move-exception v0

    invoke-virtual {v14, v5}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1957
    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    throw v0

    .line 1962
    .end local v5    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v19    # "blockIsInvalid":Z
    .restart local v9    # "blockIsInvalid":Z
    :cond_9
    move/from16 v19, v9

    const/4 v9, 0x0

    .end local v9    # "blockIsInvalid":Z
    .restart local v19    # "blockIsInvalid":Z
    :goto_6
    invoke-virtual {v14, v4, v15, v3, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1963
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    iput-boolean v9, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 1965
    .end local v3    # "right":I
    .end local v4    # "left":I
    .end local v7    # "bottom":I
    .end local v8    # "blockBeginLine":I
    .end local v15    # "top":I
    :goto_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    invoke-virtual {v0, v14}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 1966
    return v12
.end method

.method private ensureNoSelectionIfNonSelectable()V
    .locals 3

    .line 1345
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1347
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 1346
    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1349
    :cond_0
    return-void
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 1628
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-nez p5, :cond_0

    goto/16 :goto_5

    .line 1632
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1633
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 1634
    return v0

    .line 1637
    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    .line 1638
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1639
    .local v2, "N":I
    if-gez p2, :cond_2

    .line 1640
    const/4 v4, -0x1

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1641
    const/4 p2, 0x0

    .line 1642
    move p3, v2

    goto :goto_2

    .line 1646
    :cond_2
    add-int/2addr p3, p4

    .line 1648
    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_5

    .line 1649
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    .line 1650
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1652
    .local v5, "spans":[Ljava/lang/Object;
    array-length v6, v5

    .line 1653
    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_5

    .line 1654
    add-int/lit8 v6, v6, -0x1

    .line 1655
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1656
    .local v7, "j":I
    if-ge v7, p2, :cond_3

    move p2, v7

    .line 1657
    :cond_3
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 1658
    if-le v7, p3, :cond_4

    move p3, v7

    .line 1659
    .end local v7    # "j":I
    :cond_4
    goto :goto_0

    .line 1661
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    .end local v6    # "i":I
    :cond_5
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1662
    sub-int v4, p3, p4

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1664
    if-le p2, v2, :cond_6

    .line 1665
    move p2, v2

    goto :goto_1

    .line 1666
    :cond_6
    if-gez p2, :cond_7

    .line 1667
    const/4 p2, 0x0

    .line 1669
    :cond_7
    :goto_1
    if-le p3, v2, :cond_8

    .line 1670
    move p3, v2

    goto :goto_2

    .line 1671
    :cond_8
    if-gez p3, :cond_9

    .line 1672
    const/4 p3, 0x0

    .line 1675
    :cond_9
    :goto_2
    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_a

    .line 1676
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_3

    .line 1679
    :cond_a
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1682
    .end local v2    # "N":I
    :goto_3
    goto :goto_4

    .line 1683
    :cond_b
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1684
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1685
    const-string v2, ""

    iput-object v2, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1687
    :goto_4
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1688
    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 1689
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1691
    :cond_c
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1692
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr v2, v3

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1694
    :cond_d
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1695
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1696
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1697
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    .line 1698
    return v3

    .line 1629
    .end local v1    # "content":Ljava/lang/CharSequence;
    :cond_e
    :goto_5
    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .line 2262
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2263
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2264
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 2266
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method private findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 8
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 2830
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 2831
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 2833
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v1

    .line 2837
    :cond_0
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 2839
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 2840
    .local v4, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2841
    .local v5, "start":I
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_1

    .line 2842
    goto :goto_1

    .line 2844
    :cond_1
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2845
    .local v6, "end":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v6, v7, :cond_2

    .line 2846
    goto :goto_1

    .line 2848
    :cond_2
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2849
    return-object v4

    .line 2839
    .end local v4    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2852
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 5
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .line 1971
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    .line 1972
    .local v0, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1973
    const/4 v2, 0x0

    .line 1974
    .local v2, "blockIndexFound":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 1975
    aget v4, p1, v3

    if-ne v4, v1, :cond_0

    .line 1976
    const/4 v2, 0x1

    .line 1977
    goto :goto_2

    .line 1974
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1980
    .end local v3    # "j":I
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 1972
    .end local v2    # "blockIndexFound":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1981
    .restart local v2    # "blockIndexFound":Z
    :cond_2
    return v1

    .line 1985
    .end local v1    # "i":I
    .end local v2    # "blockIndexFound":Z
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/Editor$TextRenderNode;

    iput-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1986
    return v0
.end method

.method private getCharClusterRange(I)J
    .locals 5
    .param p1, "offset"    # I

    .line 1093
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1094
    .local v0, "textLength":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    .line 1095
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1096
    .local v2, "clusterEndOffset":I
    nop

    .line 1097
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1096
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    .line 1099
    .end local v2    # "clusterEndOffset":I
    :cond_0
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    .line 1100
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1101
    .local v1, "clusterStartOffset":I
    nop

    .line 1102
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1101
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1104
    .end local v1    # "clusterStartOffset":I
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .line 5614
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 5615
    .local v0, "trueLine":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-gt p2, v1, :cond_4

    .line 5616
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4

    if-gez p2, :cond_0

    goto :goto_2

    .line 5621
    :cond_0
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 5623
    return v0

    .line 5626
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    int-to-float v1, v1

    .line 5627
    .local v1, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5628
    .local v2, "lineCount":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 5630
    .local v3, "slop":F
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    .line 5631
    .local v5, "firstLineTop":F
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    .line 5632
    .local v6, "prevLineTop":F
    sub-float v7, v6, v3

    add-float v8, v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 5634
    .local v7, "yTopBound":F
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 5635
    .local v8, "lastLineBottom":F
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    .line 5636
    .local v9, "prevLineBottom":F
    add-float v10, v9, v3

    sub-float v11, v8, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 5640
    .local v10, "yBottomBound":F
    cmpg-float v11, p3, v7

    if-gtz v11, :cond_2

    .line 5641
    add-int/lit8 v11, p2, -0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "currLine":I
    :goto_0
    goto :goto_1

    .line 5642
    .end local v4    # "currLine":I
    :cond_2
    cmpl-float v4, p3, v10

    if-ltz v4, :cond_3

    .line 5643
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 5645
    :cond_3
    move v4, p2

    .line 5647
    .restart local v4    # "currLine":I
    :goto_1
    return v4

    .line 5618
    .end local v1    # "verticalOffset":F
    .end local v2    # "lineCount":I
    .end local v3    # "slop":F
    .end local v4    # "currLine":I
    .end local v5    # "firstLineTop":F
    .end local v6    # "prevLineTop":F
    .end local v7    # "yTopBound":F
    .end local v8    # "lastLineBottom":F
    .end local v9    # "prevLineBottom":F
    .end local v10    # "yBottomBound":F
    :cond_4
    :goto_2
    return v0
.end method

.method private getErrorX()I
    .locals 7

    .line 638
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 640
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 642
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 645
    .local v2, "layoutDirection":I
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 648
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    nop

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v5, v3

    .line 649
    .local v5, "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 650
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 651
    .local v3, "errorX":I
    goto :goto_0

    .line 653
    .end local v3    # "errorX":I
    .end local v5    # "offset":I
    :cond_1
    if-eqz v1, :cond_2

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    nop

    :cond_2
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v5, v3

    .line 654
    .restart local v5    # "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    .line 657
    .restart local v3    # "errorX":I
    :goto_0
    return v3
.end method

.method private getErrorY()I
    .locals 10

    .line 669
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 670
    .local v0, "compoundPaddingTop":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 671
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 673
    .local v1, "vspace":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 675
    .local v2, "dr":Landroid/widget/TextView$Drawables;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    .line 677
    .local v3, "layoutDirection":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    .line 680
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    nop

    .line 681
    .local v4, "height":I
    :cond_0
    goto :goto_0

    .line 683
    .end local v4    # "height":I
    :cond_1
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    nop

    .line 687
    .restart local v4    # "height":I
    :cond_2
    :goto_0
    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    .line 693
    .local v5, "icontop":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 694
    .local v6, "scale":F
    add-int v7, v5, v4

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7
.end method

.method private getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 2

    .line 2425
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2426
    return-object v1

    .line 2429
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1

    .line 2430
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2432
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2433
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2436
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method private getLastTapPosition()I
    .locals 2

    .line 1392
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1394
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1396
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1397
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1399
    :cond_0
    return v0

    .line 1403
    .end local v0    # "lastTapPosition":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .line 1245
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1246
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1247
    .local v1, "minOffset":I
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v2

    .line 1248
    .local v2, "maxOffset":I
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getNextCursorOffset(IZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .line 1086
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1087
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    return p1

    .line 1088
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-ne p2, v1, :cond_1

    .line 1089
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 1088
    :goto_0
    return v1
.end method

.method private getParagraphsRange(II)J
    .locals 7
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    .line 1028
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1029
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 1030
    const/4 v1, -0x1

    invoke-static {v1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1

    .line 1032
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1033
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1035
    .local v2, "minLine":I
    :goto_0
    const/16 v3, 0xa

    if-lez v2, :cond_2

    .line 1036
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1037
    .local v4, "prevLineEndOffset":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1038
    goto :goto_1

    .line 1040
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1041
    .end local v4    # "prevLineEndOffset":I
    goto :goto_0

    .line 1042
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1044
    .local v4, "maxLine":I
    :goto_2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    .line 1045
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1046
    .local v5, "lineEndOffset":I
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_3

    .line 1047
    goto :goto_3

    .line 1049
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1050
    .end local v5    # "lineEndOffset":I
    goto :goto_2

    .line 1051
    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .line 1130
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1133
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .locals 1

    .line 2175
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_0

    .line 2176
    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 2178
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2602
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090102

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2605
    .local v0, "shadowView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 2609
    sub-int v1, p2, p1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 2610
    add-int/lit8 v1, p1, 0x14

    invoke-direct {p0, v1}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v1

    .line 2611
    .local v1, "range":J
    invoke-static {v1, v2}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    .line 2613
    .end local v1    # "range":J
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2614
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2615
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2617
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2618
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2620
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2623
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2624
    .local v3, "size":I
    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 2626
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 2627
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2628
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 2606
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v3    # "size":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to inflate text drag thumbnail"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 906
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 907
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_0

    .line 912
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    .line 914
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 915
    return p1

    .line 917
    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    .line 1069
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1073
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1079
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1080
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1082
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private getWordStart(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 891
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 892
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_0

    .line 897
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    .line 899
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 900
    return p1

    .line 902
    :cond_1
    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .line 781
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 782
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 784
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 786
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 787
    return-void
.end method

.method private hideError()V
    .locals 1

    .line 620
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 626
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 627
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .line 771
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 774
    :cond_0
    return-void
.end method

.method private invalidateActionMode()V
    .locals 1

    .line 2169
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2172
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .line 2337
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2338
    .local v0, "spannable":Landroid/text/Spannable;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2339
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 2338
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 2340
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2341
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2342
    return v5

    .line 2340
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2345
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method private isCursorVisible()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOffsetVisible(I)Z
    .locals 7
    .param p1, "offset"    # I

    .line 1142
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1143
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1145
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1146
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 1147
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    .line 1148
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1149
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1150
    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    .line 1148
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v4

    return v4
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1157
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1158
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1160
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    .line 1161
    .local v2, "line":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1163
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    return v1

    .line 1164
    :cond_1
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    return v1

    .line 1165
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 6339
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$startActionModeInternal$0(Landroid/widget/Editor;)V
    .locals 0

    .line 2245
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method private needsToSelectAllToSelectWordOrParagraph()Z
    .locals 5

    .line 921
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 925
    return v1

    .line 928
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 929
    .local v0, "inputType":I
    and-int/lit8 v2, v0, 0xf

    .line 930
    .local v2, "klass":I
    and-int/lit16 v3, v0, 0xff0

    .line 933
    .local v3, "variation":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb0

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 942
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 940
    :cond_2
    :goto_0
    return v1
.end method

.method private replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 25
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    move-object/from16 v0, p0

    .line 2856
    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 2858
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_0

    .line 2860
    return-void

    .line 2862
    :cond_0
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 2863
    .local v3, "editable":Landroid/text/Editable;
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 2864
    .local v4, "spanStart":I
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 2865
    .local v5, "spanEnd":I
    if-ltz v4, :cond_6

    if-gt v5, v4, :cond_1

    .line 2867
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    goto/16 :goto_3

    .line 2870
    :cond_1
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 2872
    .local v6, "originalText":Ljava/lang/String;
    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 2874
    .local v7, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v8, v7

    .line 2875
    .local v8, "length":I
    new-array v9, v8, [I

    .line 2876
    .local v9, "suggestionSpansStarts":[I
    new-array v10, v8, [I

    .line 2877
    .local v10, "suggestionSpansEnds":[I
    new-array v11, v8, [I

    .line 2878
    .local v11, "suggestionSpansFlags":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v8, :cond_3

    .line 2879
    aget-object v14, v7, v13

    .line 2880
    .local v14, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    aput v15, v9, v13

    .line 2881
    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    aput v15, v10, v13

    .line 2882
    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    aput v15, v11, v13

    .line 2885
    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v15

    .line 2886
    .local v15, "suggestionSpanFlags":I
    and-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_2

    .line 2887
    and-int/lit8 v15, v15, -0x3

    .line 2888
    and-int/lit8 v15, v15, -0x2

    .line 2889
    invoke-virtual {v14, v15}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 2878
    .end local v14    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v15    # "suggestionSpanFlags":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2894
    .end local v13    # "i":I
    :cond_3
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2895
    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    iget v14, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 2894
    invoke-virtual {v2, v13, v6, v14}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2898
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 2899
    .local v13, "suggestionStart":I
    iget v14, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 2900
    .local v14, "suggestionEnd":I
    iget-object v15, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v15, v13, v14}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2901
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2902
    .local v15, "suggestion":Ljava/lang/String;
    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v5, v15}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2904
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v12

    .line 2905
    .local v12, "suggestions":[Ljava/lang/String;
    move-object/from16 v18, v2

    iget v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v18, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    aput-object v6, v12, v2

    .line 2908
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v16, v5, v4

    sub-int v2, v2, v16

    .line 2909
    .local v2, "lengthDelta":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v19, v17

    .end local v17    # "i":I
    .local v19, "i":I
    move/from16 v1, v19

    if-ge v1, v8, :cond_5

    .line 2913
    .end local v19    # "i":I
    .local v1, "i":I
    move-object/from16 v20, v3

    aget v3, v9, v1

    .end local v3    # "editable":Landroid/text/Editable;
    .local v20, "editable":Landroid/text/Editable;
    if-gt v3, v4, :cond_4

    aget v3, v10, v1

    if-lt v3, v5, :cond_4

    .line 2914
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v21, v4

    aget-object v4, v7, v1

    .end local v4    # "spanStart":I
    .local v21, "spanStart":I
    move-object/from16 v22, v6

    aget v6, v9, v1

    .end local v6    # "originalText":Ljava/lang/String;
    .local v22, "originalText":Ljava/lang/String;
    aget v16, v10, v1

    move-object/from16 v23, v7

    add-int v7, v16, v2

    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v23, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move/from16 v24, v8

    aget v8, v11, v1

    .end local v8    # "length":I
    .local v24, "length":I
    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    goto :goto_2

    .line 2909
    .end local v21    # "spanStart":I
    .end local v22    # "originalText":Ljava/lang/String;
    .end local v23    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v24    # "length":I
    .restart local v4    # "spanStart":I
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_4
    move/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    .end local v4    # "spanStart":I
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v21    # "spanStart":I
    .restart local v22    # "originalText":Ljava/lang/String;
    .restart local v23    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v24    # "length":I
    :goto_2
    add-int/lit8 v17, v1, 0x1

    .end local v1    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v1, p1

    goto :goto_1

    .line 2919
    .end local v17    # "i":I
    .end local v20    # "editable":Landroid/text/Editable;
    .end local v21    # "spanStart":I
    .end local v22    # "originalText":Ljava/lang/String;
    .end local v23    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v24    # "length":I
    .restart local v3    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_5
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v20    # "editable":Landroid/text/Editable;
    .restart local v21    # "spanStart":I
    .restart local v22    # "originalText":Ljava/lang/String;
    .restart local v23    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v24    # "length":I
    add-int v1, v5, v2

    .line 2920
    .local v1, "newCursorPosition":I
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 2921
    return-void

    .line 2867
    .end local v1    # "newCursorPosition":I
    .end local v9    # "suggestionSpansStarts":[I
    .end local v10    # "suggestionSpansEnds":[I
    .end local v11    # "suggestionSpansFlags":[I
    .end local v12    # "suggestions":[Ljava/lang/String;
    .end local v13    # "suggestionStart":I
    .end local v14    # "suggestionEnd":I
    .end local v15    # "suggestion":Ljava/lang/String;
    .end local v18    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v20    # "editable":Landroid/text/Editable;
    .end local v21    # "spanStart":I
    .end local v22    # "originalText":Ljava/lang/String;
    .end local v23    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v24    # "length":I
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .restart local v3    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .restart local v18    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .restart local v20    # "editable":Landroid/text/Editable;
    .restart local v21    # "spanStart":I
    :goto_3
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    .line 826
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 828
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 830
    :cond_0
    return-void
.end method

.method private selectCurrentParagraph()Z
    .locals 9

    .line 1002
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1003
    return v1

    .line 1006
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1010
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1011
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1012
    .local v0, "minLastTouchOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1014
    .local v4, "maxLastTouchOffset":I
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v5

    .line 1015
    .local v5, "paragraphsRange":J
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 1016
    .local v7, "start":I
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 1017
    .local v8, "end":I
    if-ge v7, v8, :cond_2

    .line 1018
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1019
    const/4 v1, 0x1

    return v1

    .line 1021
    :cond_2
    return v1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 2

    .line 2188
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2191
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2192
    return v1

    .line 2194
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2195
    return v1

    .line 2197
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2199
    return v1

    .line 2201
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2202
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 2204
    const/4 v0, 0x1

    return v0
.end method

.method private sendUpdateSelection()V
    .locals 11

    .line 1750
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_1

    .line 1751
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1752
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1753
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 1754
    .local v7, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 1755
    .local v8, "selectionEnd":I
    const/4 v1, -0x1

    .line 1756
    .local v1, "candStart":I
    const/4 v2, -0x1

    .line 1757
    .local v2, "candEnd":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    .line 1758
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 1759
    .local v3, "sp":Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 1760
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 1764
    .end local v1    # "candStart":I
    .end local v2    # "candEnd":I
    .end local v3    # "sp":Landroid/text/Spannable;
    .local v9, "candStart":I
    .local v10, "candEnd":I
    :cond_0
    move v9, v1

    move v10, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object v1, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1768
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "selectionStart":I
    .end local v8    # "selectionEnd":I
    .end local v9    # "candStart":I
    .end local v10    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 608
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 609
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 610
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$Drawables;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    iput-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 612
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 614
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 615
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 616
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 617
    return-void
.end method

.method private shouldBlink()Z
    .locals 3

    .line 2548
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2550
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2551
    .local v0, "start":I
    if-gez v0, :cond_1

    return v1

    .line 2553
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2554
    .local v2, "end":I
    if-gez v2, :cond_2

    return v1

    .line 2556
    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    .line 2548
    .end local v0    # "start":I
    .end local v2    # "end":I
    :cond_4
    :goto_0
    return v1
.end method

.method private shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1460
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1461
    return v1

    .line 1463
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1465
    .local v0, "primaryButtonStateChanged":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1466
    .local v3, "action":I
    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 1468
    return v2

    .line 1470
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1471
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1472
    return v2

    .line 1474
    :cond_4
    return v1
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 17

    .line 2275
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2276
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2278
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    .line 2279
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2280
    .local v4, "selectionStart":I
    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2281
    .local v5, "selectionEnd":I
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 2283
    .local v6, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v7, v6

    if-nez v7, :cond_1

    .line 2284
    return v3

    .line 2286
    :cond_1
    const/4 v7, 0x1

    if-ne v4, v5, :cond_4

    .line 2288
    move v8, v3

    .local v8, "i":I
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 2289
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_2

    .line 2290
    return v7

    .line 2288
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2293
    .end local v8    # "i":I
    :cond_3
    return v3

    .line 2295
    :cond_4
    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2296
    .local v8, "minSpanStart":I
    const/4 v9, 0x0

    .line 2297
    .local v9, "maxSpanEnd":I
    iget-object v10, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 2298
    .local v10, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 2299
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v12, 0x0

    .line 2300
    .local v12, "hasValidSuggestions":Z
    move v13, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v3

    .local v8, "i":I
    .local v9, "minSpanStart":I
    .local v10, "maxSpanEnd":I
    .local v11, "unionOfSpansCoveringSelectionStartStart":I
    .local v13, "unionOfSpansCoveringSelectionStartEnd":I
    :goto_1
    array-length v14, v6

    if-ge v8, v14, :cond_9

    .line 2301
    aget-object v14, v6, v8

    invoke-interface {v2, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 2302
    .local v14, "spanStart":I
    aget-object v15, v6, v8

    invoke-interface {v2, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 2303
    .local v15, "spanEnd":I
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2304
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2305
    if-lt v4, v14, :cond_8

    if-le v4, v15, :cond_5

    .line 2307
    goto :goto_4

    .line 2309
    :cond_5
    if-nez v12, :cond_7

    aget-object v7, v6, v8

    .line 2310
    invoke-virtual {v7}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_6

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v7, 0x1

    .line 2311
    .end local v12    # "hasValidSuggestions":Z
    .local v7, "hasValidSuggestions":Z
    :goto_3
    nop

    .line 2312
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2313
    nop

    .line 2314
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2300
    .end local v13    # "unionOfSpansCoveringSelectionStartEnd":I
    .end local v14    # "spanStart":I
    .end local v15    # "spanEnd":I
    .local v12, "unionOfSpansCoveringSelectionStartEnd":I
    move v13, v12

    move v12, v7

    .end local v7    # "hasValidSuggestions":Z
    .local v12, "hasValidSuggestions":Z
    .restart local v13    # "unionOfSpansCoveringSelectionStartEnd":I
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    goto :goto_1

    .line 2316
    .end local v8    # "i":I
    :cond_9
    if-nez v12, :cond_a

    .line 2317
    return v3

    .line 2319
    :cond_a
    if-lt v11, v13, :cond_b

    .line 2321
    return v3

    .line 2323
    :cond_b
    if-lt v9, v11, :cond_d

    if-le v10, v13, :cond_c

    goto :goto_5

    .line 2329
    :cond_c
    const/4 v3, 0x1

    return v3

    .line 2327
    :cond_d
    :goto_5
    return v3
.end method

.method private showError()V
    .locals 8

    .line 557
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 558
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 559
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 564
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109010d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 567
    .local v2, "err":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 568
    .local v3, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 570
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 573
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 576
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "err":Landroid/widget/TextView;
    .end local v3    # "scale":F
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 577
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 578
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 582
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v2}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 583
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 5

    .line 1535
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1538
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1539
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1544
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 1546
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private startDragAndDrop()V
    .locals 8

    .line 1169
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    .line 1172
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1176
    .local v0, "start":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1177
    .local v1, "end":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1178
    .local v2, "selectedText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 1179
    .local v3, "data":Landroid/content/ClipData;
    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1180
    .local v4, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v6

    const/16 v7, 0x100

    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1182
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1183
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1184
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1186
    :cond_1
    return-void
.end method

.method private stopTextActionModeWithPreservingSelection()V
    .locals 2

    .line 2402
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2403
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2405
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2406
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2408
    return-void
.end method

.method private suspendBlink()V
    .locals 1

    .line 820
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 823
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 6

    .line 1108
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1109
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1111
    .local v1, "selectionEnd":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1112
    return v2

    .line 1115
    :cond_0
    if-le v0, v1, :cond_1

    .line 1116
    move v3, v0

    .line 1117
    .local v3, "tmp":I
    move v0, v1

    .line 1118
    move v1, v3

    .line 1119
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1122
    .end local v3    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 1123
    .local v3, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    .line 1124
    .local v4, "minOffset":I
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v5

    .line 1126
    .local v5, "maxOffset":I
    if-lt v4, v0, :cond_2

    if-ge v5, v1, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method

.method private updateCursorPosition(IIF)V
    .locals 6
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "horizontal"    # F

    .line 2462
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2463
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 2466
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    .line 2467
    .local v0, "left":I
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2468
    .local v1, "width":I
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p1, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p2

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2470
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1515
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1518
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 1519
    goto :goto_0

    .line 1522
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    .line 1525
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .line 794
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 795
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 797
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 798
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 800
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 806
    :cond_1
    return-void
.end method

.method private updateTapState(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1438
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1439
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 1441
    .local v2, "isMouse":Z
    iget v3, p0, Landroid/widget/Editor;->mTapState:I

    const/4 v4, 0x2

    if-eq v3, v1, :cond_0

    iget v3, p0, Landroid/widget/Editor;->mTapState:I

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 1443
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    sub-long/2addr v5, v7

    .line 1444
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gtz v3, :cond_2

    .line 1445
    iget v3, p0, Landroid/widget/Editor;->mTapState:I

    if-ne v3, v1, :cond_1

    .line 1446
    iput v4, p0, Landroid/widget/Editor;->mTapState:I

    goto :goto_0

    .line 1448
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/Editor;->mTapState:I

    goto :goto_0

    .line 1451
    :cond_2
    iput v1, p0, Landroid/widget/Editor;->mTapState:I

    .line 1454
    .end local v2    # "isMouse":Z
    :cond_3
    :goto_0
    if-ne v0, v1, :cond_4

    .line 1455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 1457
    :cond_4
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 5
    .param p1, "text"    # Landroid/text/Spannable;

    .line 2719
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2721
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2722
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2725
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 2726
    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 2728
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2729
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .line 837
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 838
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 839
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 842
    :cond_1
    if-eqz p3, :cond_3

    .line 843
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 846
    :cond_2
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 847
    if-eqz p4, :cond_3

    .line 848
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 852
    :cond_3
    :goto_0
    return-void
.end method

.method public beginBatchEdit()V
    .locals 4

    .line 1549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1550
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1551
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    .line 1552
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1553
    .local v2, "nesting":I
    if-ne v2, v0, :cond_1

    .line 1554
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1555
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1556
    iget-boolean v3, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v3, :cond_0

    .line 1559
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1560
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_0

    .line 1562
    :cond_0
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1563
    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1564
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1566
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 1567
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1570
    .end local v2    # "nesting":I
    :cond_1
    return-void
.end method

.method canRedo()Z
    .locals 4

    .line 432
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 433
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method canUndo()Z
    .locals 4

    .line 427
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 428
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method checkField()Z
    .locals 2

    .line 2213
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2218
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2214
    :cond_1
    :goto_0
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const/4 v0, 0x0

    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 701
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .line 704
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 707
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 2

    .line 1573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1574
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1575
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1576
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1577
    .local v1, "nesting":I
    if-nez v1, :cond_0

    .line 1578
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1581
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .line 1584
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1585
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1586
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1587
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1589
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 1621
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 2
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .line 1592
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1593
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 1595
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1598
    :cond_0
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_2

    .line 1600
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_1

    .line 1596
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1597
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1604
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 1607
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    .line 1608
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1609
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 1610
    .local v0, "cursorController":Landroid/widget/Editor$CursorController;
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1611
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1612
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    .line 1615
    .end local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_4
    return-void
.end method

.method forgetUndoRedo()V
    .locals 3

    .line 421
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 422
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 423
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 424
    return-void
.end method

.method public getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2458
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getLastUpPositionX()F
    .locals 1

    .line 1237
    iget v0, p0, Landroid/widget/Editor;->mLastUpPositionX:F

    return v0
.end method

.method getLastUpPositionY()F
    .locals 1

    .line 1241
    iget v0, p0, Landroid/widget/Editor;->mLastUpPositionY:F

    return v0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .line 2441
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 2442
    const/4 v0, 0x0

    return-object v0

    .line 2445
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1

    .line 2446
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2448
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2449
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2452
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method public getSuggestionsPopupWindowForTesting()Landroid/widget/Editor$SuggestionsPopupWindow;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6344
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    return-object v0
.end method

.method getTextActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 2135
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1

    .line 2130
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .line 1062
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .line 2414
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .line 2421
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    .line 766
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 767
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 768
    return-void
.end method

.method hideFloatingToolbar(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 1528
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1530
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1532
    :cond_0
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    .line 757
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 760
    :cond_0
    return-void
.end method

.method invalidateActionModeAsync()V
    .locals 1

    .line 2162
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 2163
    return-void
.end method

.method invalidateHandlesAndActionMode()V
    .locals 1

    .line 1999
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 2002
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 2003
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 2005
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 2006
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2008
    :cond_2
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    .line 2043
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1

    .line 2044
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2045
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2044
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2048
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2014
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4

    .line 2015
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2016
    .local v0, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2018
    .local v1, "lastLine":I
    move-object v2, p1

    check-cast v2, Landroid/text/DynamicLayout;

    .line 2019
    .local v2, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v3

    .line 2020
    .local v3, "blockEndLines":[I
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v4

    .line 2021
    .local v4, "blockIndices":[I
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v5

    .line 2023
    .local v5, "numberOfBlocks":I
    const/4 v6, 0x0

    .line 2025
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 2026
    aget v7, v3, v6

    if-lt v7, v0, :cond_0

    goto :goto_1

    .line 2027
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2031
    :cond_1
    :goto_1
    if-ge v6, v5, :cond_4

    .line 2032
    aget v7, v4, v6

    .line 2033
    .local v7, "blockIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2034
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2036
    :cond_2
    aget v8, v3, v6

    if-lt v8, v1, :cond_3

    .end local v0    # "firstLine":I
    .end local v1    # "lastLine":I
    .end local v2    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v3    # "blockEndLines":[I
    .end local v4    # "blockIndices":[I
    .end local v5    # "numberOfBlocks":I
    .end local v6    # "i":I
    .end local v7    # "blockIndex":I
    goto :goto_2

    .line 2037
    .restart local v0    # "firstLine":I
    .restart local v1    # "lastLine":I
    .restart local v2    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v3    # "blockEndLines":[I
    .restart local v4    # "blockIndices":[I
    .restart local v5    # "numberOfBlocks":I
    .restart local v6    # "i":I
    .restart local v7    # "blockIndex":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 2038
    .end local v7    # "blockIndex":I
    goto :goto_1

    .line 2040
    .end local v0    # "firstLine":I
    .end local v1    # "lastLine":I
    .end local v2    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v3    # "blockEndLines":[I
    .end local v4    # "blockIndices":[I
    .end local v5    # "numberOfBlocks":I
    .end local v6    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method public makeBlink()V
    .locals 4

    .line 2560
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2562
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2563
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2564
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2566
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2568
    :cond_2
    :goto_0
    return-void
.end method

.method onAttachedToWindow()V
    .locals 4

    .line 464
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 466
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 469
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 470
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 476
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2

    .line 477
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 478
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 485
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 488
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 492
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 493
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 494
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 2525
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 2526
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_0

    .line 2528
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$1000(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 2531
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2532
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 2533
    return-void
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 2737
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 2738
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2741
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2742
    .local v0, "offset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2743
    return-void

    .line 2746
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2747
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2748
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2749
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2750
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 2751
    .local v1, "isOnSelection":Z
    :goto_0
    if-nez v1, :cond_3

    .line 2754
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2755
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2759
    .end local v1    # "isOnSelection":Z
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v1

    const/4 v4, 0x5

    if-eqz v1, :cond_5

    .line 2760
    new-array v1, v4, [Landroid/widget/Editor$SuggestionInfo;

    .line 2762
    .local v1, "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    move v5, v3

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    const/4 v7, 0x0

    if-ge v5, v6, :cond_4

    .line 2763
    new-instance v6, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v6, v7}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$1;)V

    aput-object v6, v1, v5

    .line 2762
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2765
    .end local v5    # "i":I
    :cond_4
    const/16 v5, 0x9

    const v6, 0x1040586

    invoke-interface {p1, v3, v3, v5, v6}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    .line 2767
    .local v5, "subMenu":Landroid/view/SubMenu;
    iget-object v6, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v6, v1, v7}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v6

    .line 2768
    .local v6, "numItems":I
    move v7, v3

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 2769
    aget-object v8, v1, v7

    .line 2770
    .local v8, "info":Landroid/widget/Editor$SuggestionInfo;
    iget-object v9, v8, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v5, v3, v3, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    new-instance v10, Landroid/widget/Editor$4;

    invoke-direct {v10, p0, v8}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 2771
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2768
    .end local v8    # "info":Landroid/widget/Editor$SuggestionInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2781
    .end local v1    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    .end local v5    # "subMenu":Landroid/view/SubMenu;
    .end local v6    # "numItems":I
    .end local v7    # "i":I
    :cond_5
    const v1, 0x1020032

    const/4 v5, 0x2

    const v6, 0x1040669

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x7a

    .line 2783
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2784
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2785
    invoke-virtual {v5}, Landroid/widget/TextView;->canUndo()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2786
    const v1, 0x1020033

    const/4 v5, 0x3

    const v6, 0x1040574

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2788
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2789
    invoke-virtual {v5}, Landroid/widget/TextView;->canRedo()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2791
    const v1, 0x1020020

    const/4 v5, 0x4

    const v6, 0x1040003

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x78

    .line 2793
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2794
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2795
    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2796
    const v1, 0x1020021

    const v5, 0x1040001

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x63

    .line 2798
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2799
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2800
    invoke-virtual {v4}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2801
    const v1, 0x1020022

    const/4 v4, 0x6

    const v5, 0x104000b

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x76

    .line 2803
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2804
    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2805
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2806
    const v1, 0x1020031

    const/16 v4, 0xb

    const v5, 0x1040019

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2808
    invoke-virtual {v4}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2809
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2810
    const v1, 0x1020035

    const/4 v4, 0x7

    const v5, 0x10405db

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2812
    invoke-virtual {v4}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2813
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2814
    const v1, 0x102001f

    const/16 v4, 0x8

    const v5, 0x104000d

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x61

    .line 2816
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2817
    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2818
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2819
    const v1, 0x1020043

    const/16 v4, 0xa

    const v5, 0x104001a

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2821
    invoke-virtual {v3}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2822
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2824
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2825
    return-void

    .line 2739
    .end local v0    # "offset":I
    :cond_6
    :goto_3
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 497
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 499
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 503
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 505
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 509
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 513
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 518
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 522
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 524
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 526
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 540
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 541
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 542
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .line 1772
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1773
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1775
    .local v1, "selectionEnd":I
    iget-object v2, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1776
    .local v2, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v3, :cond_1

    .line 1777
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1778
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_1

    .line 1779
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1780
    iget-boolean v4, v2, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v4, :cond_1

    .line 1784
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1790
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v3, :cond_2

    .line 1791
    iget-object v3, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v3, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1794
    :cond_2
    if-eqz p3, :cond_3

    if-ne v0, v1, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 1795
    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 1798
    const/4 p3, 0x0

    .line 1801
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v3, :cond_4

    .line 1802
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3, p1}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 1803
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1804
    const/4 p3, 0x0

    .line 1808
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1809
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 1812
    :cond_5
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1814
    :goto_0
    return-void
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/DragEvent;

    move-object/from16 v1, p0

    .line 2643
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v2, v0

    .line 2645
    .local v2, "content":Landroid/text/SpannableStringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v3

    .line 2646
    .local v3, "permissions":Landroid/view/DragAndDropPermissions;
    if-eqz v3, :cond_0

    .line 2647
    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 2651
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 2652
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    .line 2653
    .local v4, "itemCount":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 2654
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 2655
    .local v7, "item":Landroid/content/ClipData$Item;
    iget-object v8, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2653
    .end local v7    # "item":Landroid/content/ClipData$Item;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2658
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v4    # "itemCount":I
    .end local v6    # "i":I
    :cond_1
    if-eqz v3, :cond_2

    .line 2659
    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->release()V

    .line 2663
    :cond_2
    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 2664
    iget-object v0, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 2666
    :try_start_1
    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2667
    .local v0, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    .line 2668
    .local v4, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2669
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v7, v4, Landroid/widget/Editor$DragLocalState;

    if-eqz v7, :cond_3

    .line 2670
    move-object v7, v4

    check-cast v7, Landroid/widget/Editor$DragLocalState;

    move-object v6, v7

    .line 2672
    :cond_3
    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v9, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v5

    .line 2675
    .local v8, "dragDropIntoItself":Z
    :goto_1
    if-eqz v8, :cond_5

    .line 2676
    iget v9, v6, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v9, :cond_5

    iget v9, v6, Landroid/widget/Editor$DragLocalState;->end:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v9, :cond_5

    .line 2713
    iget-object v5, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->endBatchEdit()V

    .line 2714
    iget-object v5, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 2678
    return-void

    .line 2682
    :cond_5
    :try_start_2
    iget-object v9, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 2683
    .local v9, "originalLength":I
    move v10, v0

    .line 2684
    .local v10, "min":I
    move v11, v0

    .line 2686
    .local v11, "max":I
    iget-object v12, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spannable;

    invoke-static {v12, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2687
    iget-object v12, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v10, v11, v2}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2689
    if-eqz v8, :cond_7

    .line 2690
    iget v12, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2691
    .local v12, "dragSourceStart":I
    iget v13, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2692
    .local v13, "dragSourceEnd":I
    if-gt v11, v12, :cond_6

    .line 2694
    iget-object v14, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    sub-int/2addr v14, v9

    .line 2695
    .local v14, "shift":I
    add-int/2addr v12, v14

    .line 2696
    add-int/2addr v13, v14

    .line 2700
    .end local v14    # "shift":I
    :cond_6
    iget-object v14, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2703
    add-int/lit8 v14, v12, -0x1

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2704
    .local v14, "prevCharIdx":I
    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    add-int/lit8 v7, v12, 0x1

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2705
    .local v7, "nextCharIdx":I
    add-int/lit8 v15, v14, 0x1

    if-le v7, v15, :cond_7

    .line 2706
    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14, v7}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2707
    .local v15, "t":Ljava/lang/CharSequence;
    invoke-interface {v15, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    invoke-interface {v15, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2708
    iget-object v5, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v16, v0

    add-int/lit8 v0, v14, 0x1

    .end local v0    # "offset":I
    .local v16, "offset":I
    invoke-virtual {v5, v14, v0}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2713
    .end local v4    # "localState":Ljava/lang/Object;
    .end local v6    # "dragLocalState":Landroid/widget/Editor$DragLocalState;
    .end local v7    # "nextCharIdx":I
    .end local v8    # "dragDropIntoItself":Z
    .end local v9    # "originalLength":I
    .end local v10    # "min":I
    .end local v11    # "max":I
    .end local v12    # "dragSourceStart":I
    .end local v13    # "dragSourceEnd":I
    .end local v14    # "prevCharIdx":I
    .end local v15    # "t":Ljava/lang/CharSequence;
    .end local v16    # "offset":I
    :cond_7
    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 2714
    iget-object v0, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 2715
    nop

    .line 2716
    return-void

    .line 2713
    :catchall_0
    move-exception v0

    iget-object v4, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->endBatchEdit()V

    .line 2714
    iget-object v4, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v4}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    throw v0

    .line 2658
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_8

    .line 2659
    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_8
    throw v0
.end method

.method onFocusChanged(ZI)V
    .locals 9
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .line 1252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1253
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1255
    if-eqz p1, :cond_a

    .line 1256
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1257
    .local v0, "selStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1261
    .local v1, "selEnd":I
    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1262
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1264
    .local v2, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1267
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_2

    if-ltz v0, :cond_2

    if-gez v1, :cond_8

    .line 1270
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v5

    .line 1271
    .local v5, "lastTapPosition":I
    if-ltz v5, :cond_3

    .line 1272
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1276
    :cond_3
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    .line 1277
    .local v6, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v6, :cond_4

    .line 1278
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v6, v7, v8, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1286
    :cond_4
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v7, :cond_6

    :cond_5
    if-ltz v0, :cond_6

    if-ltz v1, :cond_6

    .line 1297
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1300
    :cond_6
    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_7

    .line 1301
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->selectAllText()Z

    .line 1304
    :cond_7
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1307
    .end local v5    # "lastTapPosition":I
    .end local v6    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_8
    iput-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1308
    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1310
    iget-object v3, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 1311
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1314
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1315
    .end local v0    # "selStart":I
    .end local v1    # "selEnd":I
    .end local v2    # "isFocusHighlighted":Z
    goto :goto_4

    .line 1316
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 1317
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1320
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1322
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1323
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1324
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_3

    .line 1326
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1327
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1328
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_2

    .line 1330
    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1332
    :goto_2
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 1335
    :goto_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_e

    .line 1336
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1339
    :cond_e
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1341
    :goto_4
    return-void
.end method

.method onLocaleChanged()V
    .locals 1

    .line 1057
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1058
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1059
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .line 809
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 811
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 812
    goto :goto_0

    .line 814
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 817
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .line 2536
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2539
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 2542
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1478
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1479
    .local v0, "filterOutEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1480
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1482
    iput-boolean v1, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 1484
    :cond_0
    return-void

    .line 1486
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateTapState(Landroid/view/MotionEvent;)V

    .line 1487
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1489
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1490
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1493
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 1494
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1495
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1498
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastUpPositionX:F

    .line 1500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastUpPositionY:F

    .line 1503
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_5

    .line 1504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1509
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1510
    iput-boolean v1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1512
    :cond_5
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2349
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 2350
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 2349
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    return-void

    .line 2354
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2355
    .local v0, "selectAllGotFocus":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2356
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2357
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2358
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 2360
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 2362
    .local v3, "offset":I
    iget-boolean v4, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    xor-int/2addr v1, v4

    .line 2363
    .local v1, "shouldInsertCursor":Z
    if-eqz v1, :cond_2

    .line 2364
    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2365
    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_2

    .line 2367
    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v4}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2371
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2372
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2374
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 2375
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2378
    :cond_3
    new-instance v4, Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;-><init>(Landroid/widget/Editor;)V

    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2381
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2382
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 2381
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2383
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2384
    if-eqz v1, :cond_5

    .line 2385
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1

    .line 2387
    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 2392
    .end local v1    # "shouldInsertCursor":Z
    .end local v3    # "offset":I
    :cond_6
    :goto_1
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 1407
    if-eqz p1, :cond_1

    .line 1408
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1410
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1412
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1413
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    .line 1416
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 1417
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1419
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 1420
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1423
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1424
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1425
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_4

    .line 1426
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1430
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1432
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1434
    :cond_5
    :goto_0
    return-void
.end method

.method public performLongClick(Z)Z
    .locals 5
    .param p1, "handled"    # Z

    .line 1190
    const/4 v0, 0x1

    const/16 v1, 0x275

    if-nez p1, :cond_0

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_0

    .line 1192
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 1194
    .local v2, "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1195
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1196
    iput-boolean v0, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 1197
    const/4 p1, 0x1

    .line 1198
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1199
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 1198
    invoke-static {v3, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1204
    .end local v2    # "offset":I
    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 1205
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1206
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 1207
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1208
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    .line 1207
    invoke-static {v2, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 1212
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1213
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 1214
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1215
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1214
    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1219
    :goto_0
    const/4 p1, 0x1

    .line 1223
    :cond_2
    if-nez p1, :cond_3

    .line 1224
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1225
    if-eqz p1, :cond_3

    .line 1226
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1227
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1226
    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1233
    :cond_3
    return p1
.end method

.method prepareCursorControllers()V
    .locals 7

    .line 726
    const/4 v0, 0x0

    .line 728
    .local v0, "windowSupportsHandles":Z
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 729
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 730
    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 731
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_1

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move v0, v5

    .line 735
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 736
    .local v2, "enabled":Z
    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 737
    if-eqz v2, :cond_5

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 739
    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 740
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 741
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v3, :cond_6

    .line 742
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 743
    iput-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 747
    :cond_6
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_7

    .line 748
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 749
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v3, :cond_7

    .line 750
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 751
    iput-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 754
    :cond_7
    return-void
.end method

.method redo()V
    .locals 4

    .line 445
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 449
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 450
    return-void
.end method

.method refreshTextActionMode()V
    .locals 5

    .line 2067
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2068
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2069
    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 2072
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 2073
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    .line 2074
    .local v3, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    .line 2075
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2077
    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2078
    return-void

    .line 2080
    :cond_3
    if-eqz v0, :cond_7

    .line 2081
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 2082
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_4

    .line 2083
    iget-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v4, :cond_a

    .line 2086
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    .line 2088
    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 2093
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    .line 2090
    :cond_6
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2091
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    .line 2098
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 2100
    :cond_8
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_a

    .line 2101
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    .line 2099
    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2104
    :cond_a
    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2105
    return-void
.end method

.method replace()V
    .locals 2

    .line 453
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 457
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 459
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 460
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 461
    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .line 1702
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1703
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1704
    return v1

    .line 1706
    :cond_0
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1707
    .local v2, "wasContentChanged":Z
    if-nez v2, :cond_1

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_1

    .line 1708
    return v1

    .line 1710
    :cond_1
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1711
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1712
    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1713
    .local v3, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-nez v3, :cond_2

    .line 1714
    return v1

    .line 1716
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 1717
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v10, :cond_3

    .line 1718
    return v1

    .line 1726
    :cond_3
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_4

    if-nez v2, :cond_4

    .line 1727
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1729
    :cond_4
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1739
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v5, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1740
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1741
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1742
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1743
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1744
    const/4 v1, 0x1

    return v1

    .line 1746
    :cond_5
    return v1
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .line 410
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 411
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 412
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 414
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 415
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    .line 402
    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 403
    .local v0, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 404
    .local v1, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 405
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 406
    return-object v0
.end method

.method selectCurrentWord()Z
    .locals 12

    .line 950
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    return v1

    .line 954
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 958
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 959
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 960
    .local v0, "minOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 963
    .local v4, "maxOffset":I
    if-ltz v0, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_2

    goto/16 :goto_3

    .line 964
    :cond_2
    if-ltz v4, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_2

    .line 969
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 970
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, v0, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 971
    .local v5, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    .line 972
    aget-object v6, v5, v1

    .line 973
    .local v6, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 974
    .local v8, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 975
    .local v6, "selectionEnd":I
    goto :goto_1

    .line 978
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v6

    .line 979
    .local v6, "wordIterator":Landroid/text/method/WordIterator;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 981
    invoke-virtual {v6, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    .line 982
    .restart local v8    # "selectionStart":I
    invoke-virtual {v6, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    .line 984
    .local v9, "selectionEnd":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_6

    if-eq v9, v10, :cond_6

    if-ne v8, v9, :cond_5

    goto :goto_0

    .line 993
    .end local v6    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_5
    move v6, v9

    goto :goto_1

    .line 987
    .restart local v6    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v10

    .line 988
    .local v10, "range":J
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v8

    .line 989
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 993
    .end local v9    # "selectionEnd":I
    .end local v10    # "range":J
    .local v6, "selectionEnd":I
    :goto_1
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v8, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 994
    if-le v6, v8, :cond_7

    move v1, v7

    nop

    :cond_7
    return v1

    .line 964
    .end local v5    # "urlSpans":[Landroid/text/style/URLSpan;
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_8
    :goto_2
    return v1

    .line 963
    :cond_9
    :goto_3
    return v1
.end method

.method sendOnTextChanged(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .line 1373
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    .line 1374
    add-int v0, p1, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1382
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1384
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1387
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1388
    return-void
.end method

.method setContextMenuAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2732
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 2733
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 2734
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 589
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 591
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 596
    :cond_0
    iput-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 598
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_0

    .line 600
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 605
    :cond_3
    :goto_0
    return-void
.end method

.method setFrame()V
    .locals 9

    .line 880
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 882
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 883
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 884
    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    .line 883
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 886
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method setRestartActionModeOnNextRefresh(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 2139
    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2140
    return-void
.end method

.method public setTextSelection(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 7014
    return-void
.end method

.method shouldRenderCursor()Z
    .locals 9

    .line 715
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 716
    return v1

    .line 718
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 719
    return v2

    .line 721
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    .line 722
    .local v3, "showCursorDelta":J
    const-wide/16 v5, 0x3e8

    rem-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method startActionModeInternal(I)Z
    .locals 7
    .param p1, "actionMode"    # I
        .annotation build Landroid/widget/Editor$TextActionMode;
        .end annotation
    .end param

    .line 2222
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2223
    return v1

    .line 2225
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 2227
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2228
    return v1

    .line 2231
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 2232
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2233
    :cond_2
    return v1

    .line 2236
    :cond_3
    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2237
    .local v2, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2239
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v4

    .line 2240
    .local v3, "selectableText":Z
    :goto_1
    if-ne p1, v0, :cond_6

    if-nez v3, :cond_6

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v0, :cond_6

    .line 2244
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    new-instance v5, Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;

    invoke-direct {v5, p0}, Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 2248
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    move v0, v4

    .line 2249
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_8

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2250
    invoke-virtual {v4}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_8

    .line 2253
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 2254
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_8

    .line 2255
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 2258
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    return v0
.end method

.method startInsertionActionMode()V
    .locals 3

    .line 2111
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2114
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    return-void

    .line 2117
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2119
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2121
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2123
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2124
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 2126
    :cond_2
    return-void
.end method

.method startLinkActionModeAsync(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2150
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 2151
    return-void

    .line 2153
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    .line 2155
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    .line 2156
    return-void
.end method

.method startSelectionActionModeAsync(Z)V
    .locals 1
    .param p1, "adjustSelection"    # Z

    .line 2146
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    .line 2147
    return-void
.end method

.method public stopBlink()V
    .locals 2

    .line 7016
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 7017
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7019
    :cond_0
    return-void
.end method

.method protected stopTextActionMode()V
    .locals 1

    .line 2395
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2399
    :cond_0
    return-void
.end method

.method public textview()Landroid/widget/TextView;
    .locals 1

    .line 7010
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method undo()V
    .locals 4

    .line 437
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    .line 438
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 441
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 442
    return-void
.end method

.method updateCursorPosition()V
    .locals 7

    .line 2051
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v0, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v0, :cond_0

    .line 2052
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 2053
    return-void

    .line 2056
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2057
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2058
    .local v1, "offset":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2059
    .local v2, "line":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 2060
    .local v3, "top":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    .line 2062
    .local v4, "bottom":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v5

    .line 2063
    .local v5, "clamped":Z
    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v6

    invoke-direct {p0, v3, v4, v6}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    .line 2064
    return-void
.end method
