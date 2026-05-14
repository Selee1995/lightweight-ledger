.class public interface abstract Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;
.super Ljava/lang/Object;
.source "CategoryDao.java"


# virtual methods
.method public abstract allCategory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract allExpenseCategory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract allIncomeCategory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract categorySize()I
.end method

.method public abstract delete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUuid"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation
.end method

.method public abstract queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract update(JLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "icon",
            "name"
        }
    .end annotation
.end method

.method public abstract updateOrder(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "order"
        }
    .end annotation
.end method
