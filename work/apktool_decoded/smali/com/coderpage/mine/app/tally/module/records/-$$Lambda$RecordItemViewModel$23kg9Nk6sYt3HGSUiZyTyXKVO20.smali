.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;->f$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->lambda$onItemLongClick$2$RecordItemViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
