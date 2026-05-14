.class public Lcom/coderpage/mine/app/tally/module/backup/BackupModel;
.super Ljava/lang/Object;
.source "BackupModel.java"


# instance fields
.field private categoryList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "category_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;",
            ">;"
        }
    .end annotation
.end field

.field private expenseList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expense_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "metadata"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public getExpenseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->expenseList:Ljava/util/List;

    return-object v0
.end method

.method public getMetadata()Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->metadata:Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;

    return-object v0
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->categoryList:Ljava/util/List;

    return-void
.end method

.method public setExpenseList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expenseList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->expenseList:Ljava/util/List;

    return-void
.end method

.method public setMetadata(Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->metadata:Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;

    return-void
.end method
