.class public final Lcom/coderpage/base/widget/MTabLayout$Tab;
.super Ljava/lang/Object;
.source "MTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mParent:Lcom/coderpage/base/widget/MTabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lcom/coderpage/base/widget/MTabLayout$TabView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1161
    iput v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mPosition:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1259
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-eqz v0, :cond_1

    .line 1349
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1347
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a MTabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1404
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    .line 1405
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mView:Lcom/coderpage/base/widget/MTabLayout$TabView;

    .line 1406
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1407
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1408
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1409
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 1410
    iput v1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mPosition:I

    .line 1411
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mCustomView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .locals 2

    .line 1336
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-eqz v0, :cond_0

    .line 1339
    invoke-virtual {v0, p0}, Lcom/coderpage/base/widget/MTabLayout;->selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    return-void

    .line 1337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a MTabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(I)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1364
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a MTabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDesc"
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1381
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mView:Lcom/coderpage/base/widget/MTabLayout$TabView;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1239
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mView:Lcom/coderpage/base/widget/MTabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1218
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 1219
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a MTabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 1284
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1285
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1263
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mPosition:I

    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1187
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a MTabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1312
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1313
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mView:Lcom/coderpage/base/widget/MTabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
