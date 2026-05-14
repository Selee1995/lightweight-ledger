.class public Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
.super Ljava/lang/Object;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/TipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final STYLE_NORMAL:I = 0x0

.field private static final STYLE_WARNING:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private buttonLayVertical:Z

.field private cancelable:Z

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private neutralClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private style:I

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->cancelable:Z

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->buttonLayVertical:Z

    .line 153
    iput v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->style:I

    .line 167
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->cancelable:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->neutralClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->style:I

    return p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->buttonLayVertical:Z

    return p0
.end method

.method static synthetic access$600(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/app/Dialog;
    .locals 2

    .line 234
    new-instance v0, Lcom/coderpage/mine/ui/widget/TipDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coderpage/mine/ui/widget/TipDialog;-><init>(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;Lcom/coderpage/mine/ui/widget/TipDialog$1;)V

    return-object v0
.end method

.method public setButtonLayVertical(Z)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertical"
        }
    .end annotation

    .line 229
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->buttonLayVertical:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancelable"
        }
    .end annotation

    .line 189
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->cancelable:Z

    return-object p0
.end method

.method public setMessage(I)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonText",
            "listener"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonText",
            "listener"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 199
    iput-object p2, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonText",
            "listener"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonText",
            "listener"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    .line 209
    iput-object p2, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->neutralClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonText",
            "listener"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonText",
            "listener"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    .line 219
    iput-object p2, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setWarning()Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput v0, p0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->style:I

    return-object p0
.end method
