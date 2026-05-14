.class public Lcom/coderpage/base/widget/LoadingLayout$Config;
.super Ljava/lang/Object;
.source "LoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/LoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private buttonNegativeBackgroundRes:I

.field private buttonNegativeText:Ljava/lang/String;

.field private buttonNegativeTextStyle:I

.field private buttonPositiveBackgroundRes:I

.field private buttonPositiveText:Ljava/lang/String;

.field private buttonPositiveTextStyle:I

.field private iconRes:I

.field private message:Ljava/lang/String;

.field private messageTextStyle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/base/widget/LoadingLayout$Config;)I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->iconRes:I

    return p0
.end method

.method static synthetic access$100(Lcom/coderpage/base/widget/LoadingLayout$Config;)I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeTextStyle:I

    return p0
.end method

.method static synthetic access$200(Lcom/coderpage/base/widget/LoadingLayout$Config;)I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveTextStyle:I

    return p0
.end method

.method static synthetic access$300(Lcom/coderpage/base/widget/LoadingLayout$Config;)I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeBackgroundRes:I

    return p0
.end method

.method static synthetic access$400(Lcom/coderpage/base/widget/LoadingLayout$Config;)I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveBackgroundRes:I

    return p0
.end method

.method static synthetic access$500(Lcom/coderpage/base/widget/LoadingLayout$Config;)I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->messageTextStyle:I

    return p0
.end method

.method static synthetic access$600(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 2

    .line 260
    new-instance v0, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    .line 261
    iget v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->iconRes:I

    iput v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->iconRes:I

    .line 262
    iget v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveBackgroundRes:I

    iput v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveBackgroundRes:I

    .line 263
    iget v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeBackgroundRes:I

    iput v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeBackgroundRes:I

    .line 264
    iget v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveTextStyle:I

    iput v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveTextStyle:I

    .line 265
    iget v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeTextStyle:I

    iput v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeTextStyle:I

    .line 266
    iget v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->messageTextStyle:I

    iput v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->messageTextStyle:I

    .line 267
    iget-object v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->message:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveText:Ljava/lang/String;

    iput-object v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveText:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeText:Ljava/lang/String;

    iput-object v1, v0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeText:Ljava/lang/String;

    return-object v0
.end method

.method public setButtonNegativeBackgroundRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonNegativeBackgroundRes"
        }
    .end annotation

    .line 284
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeBackgroundRes:I

    return-object p0
.end method

.method public setButtonNegativeText(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonNegativeText"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeText:Ljava/lang/String;

    return-object p0
.end method

.method public setButtonNegativeTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonNegativeTextStyle"
        }
    .end annotation

    .line 294
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonNegativeTextStyle:I

    return-object p0
.end method

.method public setButtonPositiveBackgroundRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonPositiveBackgroundRes"
        }
    .end annotation

    .line 279
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveBackgroundRes:I

    return-object p0
.end method

.method public setButtonPositiveText(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonPositiveText"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveText:Ljava/lang/String;

    return-object p0
.end method

.method public setButtonPositiveTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonPositiveTextStyle"
        }
    .end annotation

    .line 289
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->buttonPositiveTextStyle:I

    return-object p0
.end method

.method public setIconRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconRes"
        }
    .end annotation

    .line 274
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->iconRes:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageTextStyle"
        }
    .end annotation

    .line 299
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout$Config;->messageTextStyle:I

    return-object p0
.end method
