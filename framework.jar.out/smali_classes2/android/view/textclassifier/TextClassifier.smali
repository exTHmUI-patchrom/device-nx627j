.class public interface abstract Landroid/view/textclassifier/TextClassifier;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$Utils;,
        Landroid/view/textclassifier/TextClassifier$EntityConfig;,
        Landroid/view/textclassifier/TextClassifier$WidgetType;,
        Landroid/view/textclassifier/TextClassifier$Hints;,
        Landroid/view/textclassifier/TextClassifier$EntityType;,
        Landroid/view/textclassifier/TextClassifier$TextClassifierType;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOG_TAG:Ljava/lang/String; = "androidtc"

.field public static final HINT_TEXT_IS_EDITABLE:Ljava/lang/String; = "android.text_is_editable"

.field public static final HINT_TEXT_IS_NOT_EDITABLE:Ljava/lang/String; = "android.text_is_not_editable"

.field public static final LOCAL:I = 0x0

.field public static final NO_OP:Landroid/view/textclassifier/TextClassifier;

.field public static final SYSTEM:I = 0x1

.field public static final TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final TYPE_DATE:Ljava/lang/String; = "date"

.field public static final TYPE_DATE_TIME:Ljava/lang/String; = "datetime"

.field public static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final TYPE_FLIGHT_NUMBER:Ljava/lang/String; = "flight"

.field public static final TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final TYPE_URL:Ljava/lang/String; = "url"

.field public static final WIDGET_TYPE_CUSTOM_EDITTEXT:Ljava/lang/String; = "customedit"

.field public static final WIDGET_TYPE_CUSTOM_TEXTVIEW:Ljava/lang/String; = "customview"

.field public static final WIDGET_TYPE_CUSTOM_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-customview"

.field public static final WIDGET_TYPE_EDITTEXT:Ljava/lang/String; = "edittext"

.field public static final WIDGET_TYPE_EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field public static final WIDGET_TYPE_TEXTVIEW:Ljava/lang/String; = "textview"

.field public static final WIDGET_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WIDGET_TYPE_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-textview"

.field public static final WIDGET_TYPE_WEBVIEW:Ljava/lang/String; = "webview"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Landroid/view/textclassifier/TextClassifier$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 247
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 249
    sget-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;

    .line 285
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 287
    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    .line 289
    .local v0, "request":Landroid/view/textclassifier/TextClassification$Request;
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    return-object v1
.end method

.method public classifyText(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextClassification$Options;)Landroid/view/textclassifier/TextClassification;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "options"    # Landroid/view/textclassifier/TextClassification$Options;

    .line 299
    if-nez p4, :cond_0

    .line 300
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 301
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    .line 300
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getRequest()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getRequest()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0

    .line 305
    :cond_1
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 306
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    .line 305
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 378
    return-void
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 2
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 328
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 330
    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public generateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks$Options;)Landroid/view/textclassifier/TextLinks;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "options"    # Landroid/view/textclassifier/TextLinks$Options;

    .line 337
    if-nez p2, :cond_0

    .line 338
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getRequest()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getRequest()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    .line 342
    :cond_1
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    .line 342
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .locals 1

    .line 359
    const v0, 0x7fffffff

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 368
    return-void
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 3
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 168
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 170
    new-instance v0, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStartIndex"    # I
    .param p3, "selectionEndIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;

    .line 206
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 208
    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    .line 210
    .local v0, "request":Landroid/view/textclassifier/TextSelection$Request;
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v1

    return-object v1
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextSelection$Options;)Landroid/view/textclassifier/TextSelection;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStartIndex"    # I
    .param p3, "selectionEndIndex"    # I
    .param p4, "options"    # Landroid/view/textclassifier/TextSelection$Options;

    .line 220
    if-nez p4, :cond_0

    .line 221
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 222
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    .line 221
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getRequest()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getRequest()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0

    .line 226
    :cond_1
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 228
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    .line 226
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
