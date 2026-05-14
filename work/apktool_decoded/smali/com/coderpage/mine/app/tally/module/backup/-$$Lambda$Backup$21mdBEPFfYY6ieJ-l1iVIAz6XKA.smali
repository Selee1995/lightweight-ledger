.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$21mdBEPFfYY6ieJ-l1iVIAz6XKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$21mdBEPFfYY6ieJ-l1iVIAz6XKA;->f$0:Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$21mdBEPFfYY6ieJ-l1iVIAz6XKA;->f$0:Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->lambda$restoreCategoryTable$3(Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)Z

    move-result p1

    return p1
.end method
