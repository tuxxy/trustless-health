import {TrustlessHealthActions} from "../trustlessHealthClient/trustlessHealthActions";
import {MainActions} from "./MainActions";

export type RootActions =
    | TrustlessHealthActions
    | MainActions;
