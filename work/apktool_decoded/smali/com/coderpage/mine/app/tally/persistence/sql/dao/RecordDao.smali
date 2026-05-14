.class public interface abstract Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;
.super Ljava/lang/Object;
.source "RecordDao.java"


# virtual methods
.method public abstract delete(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expense"
        }
    .end annotation
.end method

.method public abstract deleteAllFromCategory(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUuid"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "records"
        }
    .end annotation
.end method

.method public abstract query(IJJJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "startTime",
            "endTime",
            "limit",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract query(IJJJJ[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "startTime",
            "endTime",
            "limit",
            "offset",
            "categoryNameArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAll(JJJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "endTime",
            "limit",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAll(JJJJ[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "endTime",
            "limit",
            "offset",
            "categoryNameArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/Record;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract queryByKeyWord(Ljava/lang/String;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyWord",
            "limit",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCountOfCategory(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/model/Count;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUuid"
        }
    .end annotation
.end method

.method public abstract queryExpenseBetweenTimeTimeDesc(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryExpenseCategoryGroup(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryExpenseDailyGroup(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryExpenseMonthGroup(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryFirst()Lcom/coderpage/mine/app/tally/persistence/model/Record;
.end method

.method public abstract queryIncomeBetweenTimeTimeDesc(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIncomeCategoryGroup(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIncomeDailyGroup(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIncomeMonthGroup(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation
.end method
