import {Action, ActionCreator} from 'redux';

export const TOGGLE_DARK_MODE = 'TOGGLE_DARK_MODE';
export const CLOSE_COMPUTE_PROGRESS = 'CLOSE_COMPUTE_PROGRESS';

export interface IToggleDarkModeAction extends Action {
    type: 'TOGGLE_DARK_MODE';
}

export const toggleDarkModeAction: ActionCreator<IToggleDarkModeAction> = () => ({
    type: TOGGLE_DARK_MODE
});

export interface ICloseComputeProgressAction extends Action {
    type: 'CLOSE_COMPUTE_PROGRESS'
}

export const closeComputeProgressAction: ActionCreator<ICloseComputeProgressAction> = () => ({
   type: CLOSE_COMPUTE_PROGRESS
});

export type MainActions =
    | IToggleDarkModeAction
    | ICloseComputeProgressAction;