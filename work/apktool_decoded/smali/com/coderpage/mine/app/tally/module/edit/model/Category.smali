.class public Lcom/coderpage/mine/app/tally/module/edit/model/Category;
.super Landroidx/databinding/BaseObservable;
.source "Category.java"


# instance fields
.field private internal:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

.field private isSelect:Z


# direct methods
.method public constructor <init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->internal:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    return-void
.end method


# virtual methods
.method public getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->internal:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->isSelect:Z

    return v0
.end method

.method public setInternal(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->internal:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "select"
        }
    .end annotation

    .line 30
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->isSelect:Z

    const/16 p1, 0x8

    .line 31
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->notifyPropertyChanged(I)V

    return-void
.end method
